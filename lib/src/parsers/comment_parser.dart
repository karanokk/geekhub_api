import 'package:html/dom.dart' hide Comment;
import 'package:html/parser.dart' show parse;
import 'package:html2md/html2md.dart' as html2md;

import '../entities/comment.dart';
import '../entities/user.dart';
import '../utils.dart' show ElementHelper, parseTime;

List<Comment> parseComments(String htmlStr) {
  final doc = parse(htmlStr);
  return doc
      .querySelector(r'main > div.mt-5 > div[id$=comment-list]')
      .children
      .sublist(1)
      .map(_parseComment)
      .toList(growable: false);
}

Comment _parseComment(Element commentDiv) {
  final idStr = commentDiv.id;
  if (idStr.isEmpty) {
    final userImageUrl = commentDiv
        .querySelector('div > div:first-child > img.object-cover')
        .src;
    final texts = commentDiv
        .querySelectorAll('div > div:last-child span')
        .map((e) => e.text.trim())
        .toList(growable: false);
    assert(texts.length == 4);
    final bidderName = texts[0];
    final sinceCreated = texts[1].substring(3).replaceFirst('大约', '').trim();
    final createdAt = parseTime(sinceCreated);
    final bid = double.parse(texts[2].split(' ')[1]);
    final floor = int.parse(texts[3].substring(1));
    return Comment.bid(
        price: bid,
        floor: floor,
        createdAt: createdAt,
        bidder: User(name: bidderName, imageUrl: userImageUrl, medals: []));
  } else {
    final id = int.parse(idStr.split('_').last);
    final userImageUrl = commentDiv
        .querySelector('div.flex > div.mr-4 > div > img.object-cover')
        .src;
    final header = commentDiv.children[0].children[1].children[0];
    final headerTexts = header
        .querySelectorAll('span')
        .map((e) => e.text.trim())
        .toList(growable: false);
    assert(headerTexts.length == 9);
    final userName = headerTexts[0];
    final userGbitCount = int.parse(headerTexts[2].substring('Gbit: '.length));
    final userStarCount = int.parse(headerTexts[3].substring('Star: '.length));
    final sinceCreated = headerTexts[4].replaceFirst('大约', '').trim();
    final createdAt = parseTime(sinceCreated);
    final source = headerTexts[5].substring('via '.length);
    final floor = int.parse(headerTexts[6].substring(1));
    final starCount = int.parse(headerTexts[8]);

    final userMedals = header
        .querySelectorAll('span.h-4 > img')
        .map((e) => Medal(title: e.title, imageUrl: e.src))
        .toList(growable: false); // 可无

    final text = html2md.convert(commentDiv
        .querySelector('div.flex > div.flex-1 > div.mt-2 > span')
        .innerHtml);
    final replySpans = commentDiv.querySelectorAll(
        'div.flex > div.flex-1 > div.mt-2 > div.border > span');

    String inReplyToUserName;
    String inReplyToCommentText;
    if (replySpans.length == 2) {
      inReplyToUserName = replySpans[0].text.trim().split(' ')[1].substring(1);
      inReplyToCommentText = replySpans[1].text.trim();
    }

    return Comment.text(
        user: User(
            name: userName,
            imageUrl: userImageUrl,
            medals: userMedals,
            gbitCount: userGbitCount,
            starCount: userStarCount),
        id: id,
        source: source,
        text: text,
        floor: floor,
        createdAt: createdAt,
        starCount: starCount,
        inReplyToUserName: inReplyToUserName,
        inReplyToCommentText: inReplyToCommentText);
  }
}
