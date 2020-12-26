import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;

import '../entities/club.dart';
import '../entities/feed.dart';
import '../entities/user.dart';
import '../utils.dart' show ElementHelper, parseTime, snakeToCamel;

List<Feed> parseFeeds(String htmlStr) {
  final doc = parse(htmlStr);
  return doc
      .querySelectorAll('#home-feed-list > feed')
      .map<Feed>(_parseFeed)
      .toList(growable: false);
}

Feed _parseFeed(Element feed) {
  assert(feed.children.length == 2);
  // 列 1
  // 头像
  // 徽章
  final col1 = feed.children[0];
  assert(col1.children.length == 2, '第一行头像，第二行徽章');
  final avatarImg = col1.querySelector('div:first-child > img.object-cover');
  final authorMedals = col1
      .querySelectorAll('div:last-child > img')
      .map((e) => Medal(title: e.title, imageUrl: e.src))
      .toList(growable: false); // 可无

  // 列 2
  final col2 = feed.children[1];
  assert(col2.children.length == 4 || col2.children.length == 5);

  final row1 = col2.children[0];
  assert(row1.children.length == 2);
  // PlanZ • 19 分钟前 最后回复 Jimmy
  final row1Row1Texts = row1.children[0]
      .querySelectorAll('span')
      .map((e) => e.text)
      .toList(growable: false);
  final lastReplyUserName = row1Row1Texts.length > 3 ? row1Row1Texts[4] : null;
  final authorName = row1Row1Texts[0];
  // 库存 0  商品  KBDMan
  final row1Row2As = row1.children[1].querySelectorAll('a');
  final clubA = row1Row2As.last;

  final titleA = col2.querySelector('div.heading > a');

  final title = titleA.text.trim();
  final url = titleA.href;
  final postType = snakeToCamel(url.split('/')[3]);

  final summery = col2.children[2].text.trim();

  FeedBox box;
  if (col2.children.length == 5) {
    final boxInFeedDiv = col2.children[3].querySelector('div.box-in-feed');
    assert(boxInFeedDiv.children.length == 2);
    final boxImageUrl =
        boxInFeedDiv.querySelector('div.box-image > a > img.object-cover').src;
    final boxTexts = boxInFeedDiv
        .querySelectorAll('div.text-xs.p-3 > span')
        .map((e) => e.text)
        .toList(growable: false);
    box = FeedBox(
        imageUrl: boxImageUrl,
        text1: boxTexts[0],
        text2: boxTexts[1],
        text3: boxTexts[2]);
  }

  // 💬 26 ❤ 2 🖱 186
  final rowLastNums = col2.children.last
      .querySelectorAll('span:not(.mr-1)')
      .map((e) => int.parse(e.text.trim()))
      .toList(growable: false);
  assert(rowLastNums.length == 3);

  return Feed(
      type: postType[0].toUpperCase() + postType.substring(1),
      url: url,
      title: title,
      summery: summery,
      commentCount: rowLastNums[0],
      starCount: rowLastNums[1],
      insights: rowLastNums[2],
      author:
          User(name: authorName, imageUrl: avatarImg.src, medals: authorMedals),
      club: Club(name: clubA.text, url: clubA.href),
      lastReplyAt: parseTime(row1Row1Texts[2]),
      lastReplyUserName: lastReplyUserName,
      box: box);
}
