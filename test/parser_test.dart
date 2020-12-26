import 'dart:io';

import 'package:geekhub_api/src/parsers/comment_parser.dart';
import 'package:geekhub_api/src/parsers/feed_parser.dart';
import 'package:geekhub_api/src/parsers/post_parser.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});
  test('.parseFeeds()', () {
    final htmlStr = File('test/testdata/gh-home.html').readAsStringSync();
    final feeds = parseFeeds(htmlStr);
    expect(feeds.length, 40);
  });

  test('.parsePost()', () {
    final htmlStr =
        File('test/testdata/gh-auctions-96.html').readAsStringSync();
    final post = parsePost(htmlStr);
    expect(post.navigationTitle, '拍卖会场');
    expect(post.navigationUrl, 'https://www.geekhub.com/club/auction');
    expect(post.title, '拍卖啦！港版美心鸡蛋卷 448g（测试拍卖，但结果有效）');
  });

  test('.parseComment()', () {
    final htmlStr =
        File('test/testdata/gh-auctions-96.html').readAsStringSync();
    final comments = parseComments(htmlStr);
    expect(comments.length, 57);
  });
}
