import 'package:freezed_annotation/freezed_annotation.dart';

part 'faliures.freezed.dart';

@freezed
abstract class GeekHubAPIFaliure with _$GeekHubAPIFaliure {
  const factory GeekHubAPIFaliure.unableToParse(String message) =
      _UnableToParse;

  const factory GeekHubAPIFaliure.unAuthenticated() = _UnAuthenticated;

  const factory GeekHubAPIFaliure.unexpected() = _Unexpected;
}
