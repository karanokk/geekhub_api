// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'faliures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GeekHubAPIFaliureTearOff {
  const _$GeekHubAPIFaliureTearOff();

// ignore: unused_element
  _UnableToParse unableToParse(String message) {
    return _UnableToParse(
      message,
    );
  }

// ignore: unused_element
  _UnAuthenticated unAuthenticated() {
    return const _UnAuthenticated();
  }

// ignore: unused_element
  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

/// @nodoc
// ignore: unused_element
const $GeekHubAPIFaliure = _$GeekHubAPIFaliureTearOff();

/// @nodoc
mixin _$GeekHubAPIFaliure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unableToParse(String message),
    @required TResult unAuthenticated(),
    @required TResult unexpected(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unableToParse(String message),
    TResult unAuthenticated(),
    TResult unexpected(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unableToParse(_UnableToParse value),
    @required TResult unAuthenticated(_UnAuthenticated value),
    @required TResult unexpected(_Unexpected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unableToParse(_UnableToParse value),
    TResult unAuthenticated(_UnAuthenticated value),
    TResult unexpected(_Unexpected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GeekHubAPIFaliureCopyWith<$Res> {
  factory $GeekHubAPIFaliureCopyWith(
          GeekHubAPIFaliure value, $Res Function(GeekHubAPIFaliure) then) =
      _$GeekHubAPIFaliureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeekHubAPIFaliureCopyWithImpl<$Res>
    implements $GeekHubAPIFaliureCopyWith<$Res> {
  _$GeekHubAPIFaliureCopyWithImpl(this._value, this._then);

  final GeekHubAPIFaliure _value;
  // ignore: unused_field
  final $Res Function(GeekHubAPIFaliure) _then;
}

/// @nodoc
abstract class _$UnableToParseCopyWith<$Res> {
  factory _$UnableToParseCopyWith(
          _UnableToParse value, $Res Function(_UnableToParse) then) =
      __$UnableToParseCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$UnableToParseCopyWithImpl<$Res>
    extends _$GeekHubAPIFaliureCopyWithImpl<$Res>
    implements _$UnableToParseCopyWith<$Res> {
  __$UnableToParseCopyWithImpl(
      _UnableToParse _value, $Res Function(_UnableToParse) _then)
      : super(_value, (v) => _then(v as _UnableToParse));

  @override
  _UnableToParse get _value => super._value as _UnableToParse;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_UnableToParse(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_UnableToParse implements _UnableToParse {
  const _$_UnableToParse(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'GeekHubAPIFaliure.unableToParse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnableToParse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$UnableToParseCopyWith<_UnableToParse> get copyWith =>
      __$UnableToParseCopyWithImpl<_UnableToParse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unableToParse(String message),
    @required TResult unAuthenticated(),
    @required TResult unexpected(),
  }) {
    assert(unableToParse != null);
    assert(unAuthenticated != null);
    assert(unexpected != null);
    return unableToParse(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unableToParse(String message),
    TResult unAuthenticated(),
    TResult unexpected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToParse != null) {
      return unableToParse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unableToParse(_UnableToParse value),
    @required TResult unAuthenticated(_UnAuthenticated value),
    @required TResult unexpected(_Unexpected value),
  }) {
    assert(unableToParse != null);
    assert(unAuthenticated != null);
    assert(unexpected != null);
    return unableToParse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unableToParse(_UnableToParse value),
    TResult unAuthenticated(_UnAuthenticated value),
    TResult unexpected(_Unexpected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToParse != null) {
      return unableToParse(this);
    }
    return orElse();
  }
}

abstract class _UnableToParse implements GeekHubAPIFaliure {
  const factory _UnableToParse(String message) = _$_UnableToParse;

  String get message;
  _$UnableToParseCopyWith<_UnableToParse> get copyWith;
}

/// @nodoc
abstract class _$UnAuthenticatedCopyWith<$Res> {
  factory _$UnAuthenticatedCopyWith(
          _UnAuthenticated value, $Res Function(_UnAuthenticated) then) =
      __$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthenticatedCopyWithImpl<$Res>
    extends _$GeekHubAPIFaliureCopyWithImpl<$Res>
    implements _$UnAuthenticatedCopyWith<$Res> {
  __$UnAuthenticatedCopyWithImpl(
      _UnAuthenticated _value, $Res Function(_UnAuthenticated) _then)
      : super(_value, (v) => _then(v as _UnAuthenticated));

  @override
  _UnAuthenticated get _value => super._value as _UnAuthenticated;
}

/// @nodoc
class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'GeekHubAPIFaliure.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unableToParse(String message),
    @required TResult unAuthenticated(),
    @required TResult unexpected(),
  }) {
    assert(unableToParse != null);
    assert(unAuthenticated != null);
    assert(unexpected != null);
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unableToParse(String message),
    TResult unAuthenticated(),
    TResult unexpected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unableToParse(_UnableToParse value),
    @required TResult unAuthenticated(_UnAuthenticated value),
    @required TResult unexpected(_Unexpected value),
  }) {
    assert(unableToParse != null);
    assert(unAuthenticated != null);
    assert(unexpected != null);
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unableToParse(_UnableToParse value),
    TResult unAuthenticated(_UnAuthenticated value),
    TResult unexpected(_Unexpected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements GeekHubAPIFaliure {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res>
    extends _$GeekHubAPIFaliureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'GeekHubAPIFaliure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unableToParse(String message),
    @required TResult unAuthenticated(),
    @required TResult unexpected(),
  }) {
    assert(unableToParse != null);
    assert(unAuthenticated != null);
    assert(unexpected != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unableToParse(String message),
    TResult unAuthenticated(),
    TResult unexpected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unableToParse(_UnableToParse value),
    @required TResult unAuthenticated(_UnAuthenticated value),
    @required TResult unexpected(_Unexpected value),
  }) {
    assert(unableToParse != null);
    assert(unAuthenticated != null);
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unableToParse(_UnableToParse value),
    TResult unAuthenticated(_UnAuthenticated value),
    TResult unexpected(_Unexpected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements GeekHubAPIFaliure {
  const factory _Unexpected() = _$_Unexpected;
}
