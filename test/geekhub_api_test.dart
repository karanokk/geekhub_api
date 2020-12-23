import 'dart:async';
import 'dart:io';

import 'package:geekhub_api/src/faliures.dart';
import 'package:geekhub_api/src/geekhub_api.dart';
import 'package:geekhub_api/src/utils.dart';
import 'package:test/test.dart';

import 'utils.dart' show DioAdapterMock;

void main() {
  GeekHubAPI api;
  const cookieDir = 'test/testdata/cookies';

  tearDownAll(() async {
    // await Directory(cookieDir).delete(recursive: true);
  });

  Future<void> _assumeUnAuthenticated(FutureOr Function() action) async {
    try {
      await action();
    } on GeekHubAPIFaliure catch (f, _) {
      expect(f.maybeMap(unAuthenticated: (_) => true, orElse: () => false),
          isTrue);
    }
  }

  group('线下测试', () {
    UnWrappedErrorDio dio;
    DioAdapterMock dioAdapterMock;
    setUp(() {
      dioAdapterMock = DioAdapterMock();
      dio = UnWrappedErrorDio()..httpClientAdapter = dioAdapterMock;
      api = GeekHubAPI(dio: dio, cookieDir: cookieDir);
    });
  });

  group('线上测试', () {
    setUp(() {
      api = GeekHubAPI(cookieDir: cookieDir);
    });

    test('.isUserAuthenticated() 初始化未登陆', () async {
      expect(await api.isUserAuthenticated(), isFalse);
    });

    test('.signIn() ', () async {
      // final bytes = await api.getRucaptcha();
      // final img = File('test/testdata/cookies/img.gif');
      // img.writeAsBytesSync(bytes);
      expect(
          await api.signInWithNameAndPassword(
              name: '?', password: '?', rucaptcha: '?'),
          isFalse);
      // img.deleteSync();
    }, skip: '');

    test('.checkIn() ', () async {
      await _assumeUnAuthenticated(api.checkIn);
    });
    test('.toggleCommentStar()', () async {
      await api.toggleCommentStar(72880);
    }, skip: '');

    test('.comment()', () async {
      await api.comment(
        targetType: 'Molecule',
        targetId: 0000,
        counterBase: -100,
        relyToId: 0,
        ua: 'Mac',
        content: '',
      );
    }, skip: '');

    test('.getFeeds()', () async {
      final result = await api.getFeeds(page: 1);
      expect(result.isNotEmpty, isTrue);
    });
  });
}
