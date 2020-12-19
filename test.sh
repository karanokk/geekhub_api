dart run test_coverage --no-badge
lcov --remove coverage/lcov.info -o coverage/lcov.info  '*.freezed.dart'
