import 'package:html/parser.dart' show parse;
import 'package:html2md/html2md.dart' as html2md;

import '../entities/medal.dart';
import '../entities/post.dart';
import '../entities/user.dart';
import '../utils.dart' show ElementHelper, parseTime;

Post parsePost(String htmlStr) {
  final doc = parse(htmlStr);
  final mainbox = doc.querySelector('main > div[class^=box]');
  final navigationA = mainbox.querySelector('div.p-3 > ol > li:last-child > a');
  final navigationTitle = navigationA.text.trim();
  final navigationUrl = navigationA.href;
  final title = mainbox.querySelector('div.p-3.heading').text;

  final headerDiv = mainbox.children[2];
  assert(headerDiv.children.length == 2);
  final authorImageUrl =
      headerDiv.querySelector('div.mr-3 > img.object-cover').src;
  final headerInfos = headerDiv.children.last
      .querySelectorAll('span')
      .map((e) => e.text.trim())
      .toList(growable: false);
  assert(headerInfos.length == 17);
  final authorName = headerInfos[0];
  final authorGroup = headerInfos[1];
  final authorGbitCount = int.parse(headerInfos[4]);
  final authorStarCount = int.parse(headerInfos[7]);
  final authorScoreCount = double.parse(headerInfos[10]);

  final authorMedals = headerDiv.children.last
      .querySelectorAll('div > img')
      .map((e) => Medal(title: e.title, imageUrl: e.src))
      .toList(growable: false); // 可无

  // 发布于 大约 2 个月前 更新于 大约 2 个月前  997 浏览
  final sinceCreated =
      headerInfos[12].substring(3).replaceFirst('大约', '').trim();
  final createdAt = parseTime(sinceCreated);
  final sinceLastUpdated =
      headerInfos[14].substring(3).replaceFirst('大约', '').trim();
  final updatedAt = parseTime(sinceLastUpdated);
  final insights = int.parse(headerInfos[16].split(' ')[0]);

  final storyDiv = doc.querySelectorAll('div.story.p-4');
  final story = storyDiv.map((e) => html2md.convert(e.innerHtml)).join('');

  final starCount = int.parse(doc.querySelector('span#stars_count').text);

  final shareURL =
      mainbox.querySelector('div.social-share-button').attributes['data-url'];
  final id = doc
      .querySelector(
          '#extra-content > form > input[name="extra_content[target_id]"]')
      .attributes['value'];

  return Post(
      id: int.parse(id),
      title: title,
      text: story,
      navigationTitle: navigationTitle,
      navigationUrl: navigationUrl,
      shareURL: shareURL,
      starCount: starCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      insights: insights,
      author: User(
        name: authorName,
        imageUrl: authorImageUrl,
        medals: authorMedals,
        group: authorGroup,
        gbitCount: authorGbitCount,
        score: authorScoreCount,
        starCount: authorStarCount,
      ));
}
