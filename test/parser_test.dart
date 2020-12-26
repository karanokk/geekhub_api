import 'dart:io';

import 'package:geekhub_api/src/entities/post.dart';
import 'package:geekhub_api/src/parsers/comment_parser.dart';
import 'package:geekhub_api/src/parsers/feed_parser.dart';
import 'package:geekhub_api/src/parsers/post_parser.dart';
import 'package:geekhub_api/src/parsers/user_parser.dart';

import 'package:test/test.dart';

void main() {
  setUp(() {});
  test('.parseFeeds()', () {
    final htmlStr = File('test/testdata/gh-home.html').readAsStringSync();
    final feeds = parseFeeds(htmlStr);
    expect(feeds.length, 40);
  });

  group('.parsePost()', () {
    group('拍卖', () {
      test('进行中', () {
        final htmlStr =
            File('test/testdata/gh-auctions-xxx.html').readAsStringSync();
        final post = parsePost(htmlStr);
        final box = post.box as PostBoxAuction;
        box.state.maybeWhen(inProgress: (countDown) {
          expect(countDown, 10);
        }, orElse: () {
          assert(false);
        });
      }, skip: '');
      test('流拍', () {
        final htmlStr =
            File('test/testdata/gh-auctions-96.html').readAsStringSync();
        final post = parsePost(htmlStr);
        final box = post.box as PostBoxAuction;
        box.state.maybeWhen(failed: (since, reason) {
          expect(since, '拍卖已于 大约 2 个月前结束');
          expect(reason, '最终出价未超过保留价(¥ 100.0 元)拍卖失败');
        }, orElse: () {
          assert(false);
        });
      });
      test('成功', () {
        final htmlStr =
            File('test/testdata/gh-auctions-97.html').readAsStringSync();
        final post = parsePost(htmlStr);
        final box = post.box as PostBoxAuction;
        box.state.maybeWhen(ended: (since, dealUserName, dealPrice) {
          expect(since, '拍卖已于 大约 1 个月前结束');
          expect(dealUserName, 'yvejohn');
          expect(dealPrice, 21.0);
        }, orElse: () {
          assert(false);
        });
      });
    });

    group('二手', () {
      test('进行中', () {
        final htmlStr =
            File('test/testdata/gh-second_hands-137.html').readAsStringSync();
        final post = parsePost(htmlStr);
        final box = post.box as PostBoxSecondHand;
        expect(box.isEnded, false);
      });
      test('已结束', () {
        final htmlStr =
            File('test/testdata/gh-second_hands-120.html').readAsStringSync();
        final post = parsePost(htmlStr);
        final box = post.box as PostBoxSecondHand;
        expect(box.isEnded, true);
      });
    });

    group('分子', () {
      test('结束', () {
        final htmlStr =
            File('test/testdata/gh-molecules-129.html').readAsStringSync();
        final post = parsePost(htmlStr);
        final box = post.box as PostBoxMolecule;
        box.state.maybeWhen(ended: (since, numeratorFloors) {
          expect(since, '抢分子已于 12 天前结束');
          expect(numeratorFloors[2], 91);
        }, orElse: () {
          assert(false);
        });
      });
      test('进行中', () {
        final htmlStr =
            File('test/testdata/gh-molecules-139.html').readAsStringSync();
        final post = parsePost(htmlStr);
        final box = post.box as PostBoxMolecule;
        box.state.maybeWhen(inProgress: (countDown) {
          expect(countDown, 78918);
        }, orElse: () {
          assert(false);
        });
      });
    });

    test('个人资料', () {
      final htmlStr = File('test/testdata/gh-u-孤独的海怪.html').readAsStringSync();
      final user = parseUser(htmlStr);
      expect(user.id, 647);
    });
  });

  group('拼车', () {
    test('结束', () {
      final htmlStr =
          File('test/testdata/gh-group_buys-40.html').readAsStringSync();
      final post = parsePost(htmlStr);
      final box = post.box as PostBoxGroupBuy;
      expect(box.groupCount, 1);
      expect(box.remainCount, 0);
      expect(box.isEnded, true);
    });
    test('进行中', () {
      final htmlStr =
          File('test/testdata/gh-group_buys-55.html').readAsStringSync();
      final post = parsePost(htmlStr);
      final box = post.box as PostBoxGroupBuy;
      expect(box.groupCount, 7);
      expect(box.remainCount, 7);
      expect(box.isEnded, false);
    });
  });

  test('产品', () {
    final htmlStr = File('test/testdata/gh-works-6.html').readAsStringSync();
    final post = parsePost(htmlStr);
    final box = post.box as PostBoxWork;
  });

  test('服务', () {
    final htmlStr = File('test/testdata/gh-services-8.html').readAsStringSync();
    final post = parsePost(htmlStr);
    final box = post.box as PostBoxService;
  });

  test('.parseComment()', () {
    final htmlStr =
        File('test/testdata/gh-auctions-96.html').readAsStringSync();
    final comments = parseComments(htmlStr);
    expect(comments.length, 57);
  });
}
