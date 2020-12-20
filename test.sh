dart run test_coverage --no-badge
dart run tools/lcov_remove.dart coverage/lcov.info
genhtml -o coverage coverage/lcov.info
open coverage/index.html