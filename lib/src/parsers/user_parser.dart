import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:html2md/html2md.dart' as html2md;
import 'package:intl/intl.dart';

import '../entities/post.dart';
import '../entities/user.dart';
import '../utils.dart' show ElementHelper, parseTime, snakeToTitleCamel;

User parseUser(String htmlStr) {
  final doc = parse(htmlStr);

  final mainbox = doc.querySelector('main > div.box');

  final imageUrl = doc.querySelector('div > div.p-3 > img.object-cover').src;
  final name = doc.querySelector('div.bold.mb-3 > span').text;

  final medals = doc
      .querySelectorAll('span.flex-1.flex.items-center > img[width="15"]')
      .map((e) => Medal(title: e.title, imageUrl: e.src))
      .toList(growable: false); // 可无;

  final starButton =
      doc.querySelector(r'a[href^="/users/"][href$="/toggle_star"]');
  final following = starButton?.text == '取消星标';
  double score;
  // 为登录者, socre 可见
  if (starButton == null) {
    score = double.parse(mainbox
        .querySelector(
            'div.p-3.mt-5.box6 > div > div:nth-child(2) > div:last-child')
        .text);
  }

  final id = int.parse(starButton.attributes['href'].split('/')[2]);
  final joinIn =
      doc.querySelector('span[class="block"]').text.trim().split('加入于 ').last;
  final formatter = DateFormat('yyyy-MM-dd HH:mm:ss Z');
  final createdAt = formatter.parse(joinIn).millisecondsSinceEpoch;
  final descriptionTexts = mainbox.children[1]
      .querySelectorAll('span')
      .map((e) => e.text.trim())
      .toList(growable: false);
  final bio = descriptionTexts[1];
  final url = descriptionTexts[3];
  final company = descriptionTexts[7];
  final job = descriptionTexts[9];
  final location = descriptionTexts[11];
  final weight = int.parse(descriptionTexts[13]);
  final starCount = int.parse(descriptionTexts[15]);
  final gbitCount = int.parse(descriptionTexts[17]);
  final twitter = descriptionTexts[21];
  final telegram = descriptionTexts[23];
  final wechat = descriptionTexts[25];
  final weibo = descriptionTexts[27];

  return User(
    name: name,
    imageUrl: imageUrl,
    medals: medals,
    id: id,
    memberId: id,
    createdAt: createdAt,
    // group: null,
    url: url,
    bio: bio,
    company: company,
    job: job,
    location: location,
    weight: weight,
    starCount: starCount,
    gbitCount: gbitCount,
    following: following,
    score: score,
    twitter: twitter,
    telegram: telegram,
    wechat: wechat,
    weibo: weibo,
  );
}
