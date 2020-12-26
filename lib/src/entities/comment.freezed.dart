// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommentTearOff {
  const _$CommentTearOff();

// ignore: unused_element
  CommentText text(
      {@required User user,
      @required int id,
      @required String source,
      @required String text,
      @required int floor,
      @required int createdAt,
      @required int starCount,
      @nullable String inReplyToUserName,
      @nullable String inReplyToCommentText}) {
    return CommentText(
      user: user,
      id: id,
      source: source,
      text: text,
      floor: floor,
      createdAt: createdAt,
      starCount: starCount,
      inReplyToUserName: inReplyToUserName,
      inReplyToCommentText: inReplyToCommentText,
    );
  }

// ignore: unused_element
  CommentBid bid(
      {@required double price,
      @required int floor,
      @required int createdAt,
      @required User bidder}) {
    return CommentBid(
      price: price,
      floor: floor,
      createdAt: createdAt,
      bidder: bidder,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Comment = _$CommentTearOff();

/// @nodoc
mixin _$Comment {
  int get floor;
  int get createdAt;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult text(
            User user,
            int id,
            String source,
            String text,
            int floor,
            int createdAt,
            int starCount,
            @nullable String inReplyToUserName,
            @nullable String inReplyToCommentText),
    @required TResult bid(double price, int floor, int createdAt, User bidder),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult text(
        User user,
        int id,
        String source,
        String text,
        int floor,
        int createdAt,
        int starCount,
        @nullable String inReplyToUserName,
        @nullable String inReplyToCommentText),
    TResult bid(double price, int floor, int createdAt, User bidder),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult text(CommentText value),
    @required TResult bid(CommentBid value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult text(CommentText value),
    TResult bid(CommentBid value),
    @required TResult orElse(),
  });

  $CommentCopyWith<Comment> get copyWith;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call({int floor, int createdAt});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object floor = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      floor: floor == freezed ? _value.floor : floor as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
    ));
  }
}

/// @nodoc
abstract class $CommentTextCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory $CommentTextCopyWith(
          CommentText value, $Res Function(CommentText) then) =
      _$CommentTextCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      int id,
      String source,
      String text,
      int floor,
      int createdAt,
      int starCount,
      @nullable String inReplyToUserName,
      @nullable String inReplyToCommentText});
}

/// @nodoc
class _$CommentTextCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements $CommentTextCopyWith<$Res> {
  _$CommentTextCopyWithImpl(
      CommentText _value, $Res Function(CommentText) _then)
      : super(_value, (v) => _then(v as CommentText));

  @override
  CommentText get _value => super._value as CommentText;

  @override
  $Res call({
    Object user = freezed,
    Object id = freezed,
    Object source = freezed,
    Object text = freezed,
    Object floor = freezed,
    Object createdAt = freezed,
    Object starCount = freezed,
    Object inReplyToUserName = freezed,
    Object inReplyToCommentText = freezed,
  }) {
    return _then(CommentText(
      user: user == freezed ? _value.user : user as User,
      id: id == freezed ? _value.id : id as int,
      source: source == freezed ? _value.source : source as String,
      text: text == freezed ? _value.text : text as String,
      floor: floor == freezed ? _value.floor : floor as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      starCount: starCount == freezed ? _value.starCount : starCount as int,
      inReplyToUserName: inReplyToUserName == freezed
          ? _value.inReplyToUserName
          : inReplyToUserName as String,
      inReplyToCommentText: inReplyToCommentText == freezed
          ? _value.inReplyToCommentText
          : inReplyToCommentText as String,
    ));
  }
}

/// @nodoc
class _$CommentText implements CommentText {
  const _$CommentText(
      {@required this.user,
      @required this.id,
      @required this.source,
      @required this.text,
      @required this.floor,
      @required this.createdAt,
      @required this.starCount,
      @nullable this.inReplyToUserName,
      @nullable this.inReplyToCommentText})
      : assert(user != null),
        assert(id != null),
        assert(source != null),
        assert(text != null),
        assert(floor != null),
        assert(createdAt != null),
        assert(starCount != null);

  @override
  final User user;
  @override // comment
  final int id;
  @override
  final String source;
  @override
  final String text;
  @override
  final int floor;
  @override
  final int createdAt;
  @override
  final int starCount;
  @override
  @nullable
  final String inReplyToUserName;
  @override
  @nullable
  final String inReplyToCommentText;

  @override
  String toString() {
    return 'Comment.text(user: $user, id: $id, source: $source, text: $text, floor: $floor, createdAt: $createdAt, starCount: $starCount, inReplyToUserName: $inReplyToUserName, inReplyToCommentText: $inReplyToCommentText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentText &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.starCount, starCount) ||
                const DeepCollectionEquality()
                    .equals(other.starCount, starCount)) &&
            (identical(other.inReplyToUserName, inReplyToUserName) ||
                const DeepCollectionEquality()
                    .equals(other.inReplyToUserName, inReplyToUserName)) &&
            (identical(other.inReplyToCommentText, inReplyToCommentText) ||
                const DeepCollectionEquality()
                    .equals(other.inReplyToCommentText, inReplyToCommentText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(starCount) ^
      const DeepCollectionEquality().hash(inReplyToUserName) ^
      const DeepCollectionEquality().hash(inReplyToCommentText);

  @override
  $CommentTextCopyWith<CommentText> get copyWith =>
      _$CommentTextCopyWithImpl<CommentText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult text(
            User user,
            int id,
            String source,
            String text,
            int floor,
            int createdAt,
            int starCount,
            @nullable String inReplyToUserName,
            @nullable String inReplyToCommentText),
    @required TResult bid(double price, int floor, int createdAt, User bidder),
  }) {
    assert(text != null);
    assert(bid != null);
    return text(user, id, source, this.text, floor, createdAt, starCount,
        inReplyToUserName, inReplyToCommentText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult text(
        User user,
        int id,
        String source,
        String text,
        int floor,
        int createdAt,
        int starCount,
        @nullable String inReplyToUserName,
        @nullable String inReplyToCommentText),
    TResult bid(double price, int floor, int createdAt, User bidder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(user, id, source, this.text, floor, createdAt, starCount,
          inReplyToUserName, inReplyToCommentText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult text(CommentText value),
    @required TResult bid(CommentBid value),
  }) {
    assert(text != null);
    assert(bid != null);
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult text(CommentText value),
    TResult bid(CommentBid value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class CommentText implements Comment {
  const factory CommentText(
      {@required User user,
      @required int id,
      @required String source,
      @required String text,
      @required int floor,
      @required int createdAt,
      @required int starCount,
      @nullable String inReplyToUserName,
      @nullable String inReplyToCommentText}) = _$CommentText;

  User get user; // comment
  int get id;
  String get source;
  String get text;
  @override
  int get floor;
  @override
  int get createdAt;
  int get starCount;
  @nullable
  String get inReplyToUserName;
  @nullable
  String get inReplyToCommentText;
  @override
  $CommentTextCopyWith<CommentText> get copyWith;
}

/// @nodoc
abstract class $CommentBidCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory $CommentBidCopyWith(
          CommentBid value, $Res Function(CommentBid) then) =
      _$CommentBidCopyWithImpl<$Res>;
  @override
  $Res call({double price, int floor, int createdAt, User bidder});
}

/// @nodoc
class _$CommentBidCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements $CommentBidCopyWith<$Res> {
  _$CommentBidCopyWithImpl(CommentBid _value, $Res Function(CommentBid) _then)
      : super(_value, (v) => _then(v as CommentBid));

  @override
  CommentBid get _value => super._value as CommentBid;

  @override
  $Res call({
    Object price = freezed,
    Object floor = freezed,
    Object createdAt = freezed,
    Object bidder = freezed,
  }) {
    return _then(CommentBid(
      price: price == freezed ? _value.price : price as double,
      floor: floor == freezed ? _value.floor : floor as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      bidder: bidder == freezed ? _value.bidder : bidder as User,
    ));
  }
}

/// @nodoc
class _$CommentBid implements CommentBid {
  const _$CommentBid(
      {@required this.price,
      @required this.floor,
      @required this.createdAt,
      @required this.bidder})
      : assert(price != null),
        assert(floor != null),
        assert(createdAt != null),
        assert(bidder != null);

  @override
  final double price;
  @override
  final int floor;
  @override
  final int createdAt;
  @override
  final User bidder;

  @override
  String toString() {
    return 'Comment.bid(price: $price, floor: $floor, createdAt: $createdAt, bidder: $bidder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentBid &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.bidder, bidder) ||
                const DeepCollectionEquality().equals(other.bidder, bidder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(bidder);

  @override
  $CommentBidCopyWith<CommentBid> get copyWith =>
      _$CommentBidCopyWithImpl<CommentBid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult text(
            User user,
            int id,
            String source,
            String text,
            int floor,
            int createdAt,
            int starCount,
            @nullable String inReplyToUserName,
            @nullable String inReplyToCommentText),
    @required TResult bid(double price, int floor, int createdAt, User bidder),
  }) {
    assert(text != null);
    assert(bid != null);
    return bid(price, floor, createdAt, bidder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult text(
        User user,
        int id,
        String source,
        String text,
        int floor,
        int createdAt,
        int starCount,
        @nullable String inReplyToUserName,
        @nullable String inReplyToCommentText),
    TResult bid(double price, int floor, int createdAt, User bidder),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bid != null) {
      return bid(price, floor, createdAt, bidder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult text(CommentText value),
    @required TResult bid(CommentBid value),
  }) {
    assert(text != null);
    assert(bid != null);
    return bid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult text(CommentText value),
    TResult bid(CommentBid value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bid != null) {
      return bid(this);
    }
    return orElse();
  }
}

abstract class CommentBid implements Comment {
  const factory CommentBid(
      {@required double price,
      @required int floor,
      @required int createdAt,
      @required User bidder}) = _$CommentBid;

  double get price;
  @override
  int get floor;
  @override
  int get createdAt;
  User get bidder;
  @override
  $CommentBidCopyWith<CommentBid> get copyWith;
}
