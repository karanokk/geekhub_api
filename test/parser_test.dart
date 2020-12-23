import 'dart:io';

import 'package:geekhub_api/src/parsers/feed_parser.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});
  test('.parseFeeds(', () {
    final htmlStr = File('test/testdata/gh-home.html').readAsStringSync();
    final feeds = parseFeeds(htmlStr);
    expect(feeds.length, 40);
  });
}
