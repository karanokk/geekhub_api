// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostBoxTearOff {
  const _$PostBoxTearOff();

// ignore: unused_element
  PostBoxTopic topic() {
    return const PostBoxTopic();
  }

// ignore: unused_element
  PostBoxSecondHand secondHand(
      {@nullable String imageURL,
      @required String title,
      @required String quality,
      @required double normalPrice,
      @required double price,
      @required String wuliu,
      @required String contact,
      @required bool isEnded}) {
    return PostBoxSecondHand(
      imageURL: imageURL,
      title: title,
      quality: quality,
      normalPrice: normalPrice,
      price: price,
      wuliu: wuliu,
      contact: contact,
      isEnded: isEnded,
    );
  }

// ignore: unused_element
  PostBoxAuction auction(
      {@nullable String imageURL,
      @required String title,
      @required String quality,
      @required double estimatedPrice,
      @required double basePrice,
      @required bool hasReservedPrice,
      @required double currentPrice,
      @required PostBoxAutionState state,
      @required String wuliu,
      @required String contact}) {
    return PostBoxAuction(
      imageURL: imageURL,
      title: title,
      quality: quality,
      estimatedPrice: estimatedPrice,
      basePrice: basePrice,
      hasReservedPrice: hasReservedPrice,
      currentPrice: currentPrice,
      state: state,
      wuliu: wuliu,
      contact: contact,
    );
  }

// ignore: unused_element
  PostBoxMolecule molecule(
      {@required String productName,
      @required double proudctValue,
      @required double price,
      @required int numerator,
      @required int currentDenominator,
      @required PostBoxMoleculeState state,
      @nullable String imageURL,
      @required String wuliu,
      @required String contact,
      @required List<String> attentions}) {
    return PostBoxMolecule(
      productName: productName,
      proudctValue: proudctValue,
      price: price,
      numerator: numerator,
      currentDenominator: currentDenominator,
      state: state,
      imageURL: imageURL,
      wuliu: wuliu,
      contact: contact,
      attentions: attentions,
    );
  }

// ignore: unused_element
  PostBoxGroupBuy groupBuy(
      {@nullable String imageURL,
      @required String title,
      @required double normalPrice,
      @required double groupBuyPrice,
      @required int groupCount,
      @required int remainCount,
      @required String wuliu,
      @required String contact,
      @required bool isEnded}) {
    return PostBoxGroupBuy(
      imageURL: imageURL,
      title: title,
      normalPrice: normalPrice,
      groupBuyPrice: groupBuyPrice,
      groupCount: groupCount,
      remainCount: remainCount,
      wuliu: wuliu,
      contact: contact,
      isEnded: isEnded,
    );
  }

// ignore: unused_element
  PostBoxWork work(
      {@nullable String imageURL,
      @required String title,
      @required double price,
      @required double normalPrice,
      @required double orderPrice,
      @required int count,
      @required String quality,
      @required String wuliu,
      @required String contact}) {
    return PostBoxWork(
      imageURL: imageURL,
      title: title,
      price: price,
      normalPrice: normalPrice,
      orderPrice: orderPrice,
      count: count,
      quality: quality,
      wuliu: wuliu,
      contact: contact,
    );
  }

// ignore: unused_element
  PostBoxService service(
      {@nullable String imageURL,
      @required String skill,
      @required double price,
      @required String schedule,
      @required String contact,
      @required bool serviceIsAvaliable}) {
    return PostBoxService(
      imageURL: imageURL,
      skill: skill,
      price: price,
      schedule: schedule,
      contact: contact,
      serviceIsAvaliable: serviceIsAvaliable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostBox = _$PostBoxTearOff();

/// @nodoc
mixin _$PostBox {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PostBoxCopyWith<$Res> {
  factory $PostBoxCopyWith(PostBox value, $Res Function(PostBox) then) =
      _$PostBoxCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostBoxCopyWithImpl<$Res> implements $PostBoxCopyWith<$Res> {
  _$PostBoxCopyWithImpl(this._value, this._then);

  final PostBox _value;
  // ignore: unused_field
  final $Res Function(PostBox) _then;
}

/// @nodoc
abstract class $PostBoxTopicCopyWith<$Res> {
  factory $PostBoxTopicCopyWith(
          PostBoxTopic value, $Res Function(PostBoxTopic) then) =
      _$PostBoxTopicCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostBoxTopicCopyWithImpl<$Res> extends _$PostBoxCopyWithImpl<$Res>
    implements $PostBoxTopicCopyWith<$Res> {
  _$PostBoxTopicCopyWithImpl(
      PostBoxTopic _value, $Res Function(PostBoxTopic) _then)
      : super(_value, (v) => _then(v as PostBoxTopic));

  @override
  PostBoxTopic get _value => super._value as PostBoxTopic;
}

/// @nodoc
class _$PostBoxTopic implements PostBoxTopic {
  const _$PostBoxTopic();

  @override
  String toString() {
    return 'PostBox.topic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PostBoxTopic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return topic();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (topic != null) {
      return topic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return topic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (topic != null) {
      return topic(this);
    }
    return orElse();
  }
}

abstract class PostBoxTopic implements PostBox {
  const factory PostBoxTopic() = _$PostBoxTopic;
}

/// @nodoc
abstract class $PostBoxSecondHandCopyWith<$Res> {
  factory $PostBoxSecondHandCopyWith(
          PostBoxSecondHand value, $Res Function(PostBoxSecondHand) then) =
      _$PostBoxSecondHandCopyWithImpl<$Res>;
  $Res call(
      {@nullable String imageURL,
      String title,
      String quality,
      double normalPrice,
      double price,
      String wuliu,
      String contact,
      bool isEnded});
}

/// @nodoc
class _$PostBoxSecondHandCopyWithImpl<$Res> extends _$PostBoxCopyWithImpl<$Res>
    implements $PostBoxSecondHandCopyWith<$Res> {
  _$PostBoxSecondHandCopyWithImpl(
      PostBoxSecondHand _value, $Res Function(PostBoxSecondHand) _then)
      : super(_value, (v) => _then(v as PostBoxSecondHand));

  @override
  PostBoxSecondHand get _value => super._value as PostBoxSecondHand;

  @override
  $Res call({
    Object imageURL = freezed,
    Object title = freezed,
    Object quality = freezed,
    Object normalPrice = freezed,
    Object price = freezed,
    Object wuliu = freezed,
    Object contact = freezed,
    Object isEnded = freezed,
  }) {
    return _then(PostBoxSecondHand(
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      title: title == freezed ? _value.title : title as String,
      quality: quality == freezed ? _value.quality : quality as String,
      normalPrice:
          normalPrice == freezed ? _value.normalPrice : normalPrice as double,
      price: price == freezed ? _value.price : price as double,
      wuliu: wuliu == freezed ? _value.wuliu : wuliu as String,
      contact: contact == freezed ? _value.contact : contact as String,
      isEnded: isEnded == freezed ? _value.isEnded : isEnded as bool,
    ));
  }
}

/// @nodoc
class _$PostBoxSecondHand implements PostBoxSecondHand {
  const _$PostBoxSecondHand(
      {@nullable this.imageURL,
      @required this.title,
      @required this.quality,
      @required this.normalPrice,
      @required this.price,
      @required this.wuliu,
      @required this.contact,
      @required this.isEnded})
      : assert(title != null),
        assert(quality != null),
        assert(normalPrice != null),
        assert(price != null),
        assert(wuliu != null),
        assert(contact != null),
        assert(isEnded != null);

  @override
  @nullable
  final String imageURL;
  @override
  final String title;
  @override
  final String quality;
  @override
  final double normalPrice;
  @override
  final double price;
  @override
  final String wuliu;
  @override
  final String contact;
  @override
  final bool isEnded;

  @override
  String toString() {
    return 'PostBox.secondHand(imageURL: $imageURL, title: $title, quality: $quality, normalPrice: $normalPrice, price: $price, wuliu: $wuliu, contact: $contact, isEnded: $isEnded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostBoxSecondHand &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.quality, quality) ||
                const DeepCollectionEquality()
                    .equals(other.quality, quality)) &&
            (identical(other.normalPrice, normalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.normalPrice, normalPrice)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.wuliu, wuliu) ||
                const DeepCollectionEquality().equals(other.wuliu, wuliu)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.isEnded, isEnded) ||
                const DeepCollectionEquality().equals(other.isEnded, isEnded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(quality) ^
      const DeepCollectionEquality().hash(normalPrice) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(wuliu) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(isEnded);

  @override
  $PostBoxSecondHandCopyWith<PostBoxSecondHand> get copyWith =>
      _$PostBoxSecondHandCopyWithImpl<PostBoxSecondHand>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return secondHand(
        imageURL, title, quality, normalPrice, price, wuliu, contact, isEnded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (secondHand != null) {
      return secondHand(imageURL, title, quality, normalPrice, price, wuliu,
          contact, isEnded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return secondHand(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (secondHand != null) {
      return secondHand(this);
    }
    return orElse();
  }
}

abstract class PostBoxSecondHand implements PostBox {
  const factory PostBoxSecondHand(
      {@nullable String imageURL,
      @required String title,
      @required String quality,
      @required double normalPrice,
      @required double price,
      @required String wuliu,
      @required String contact,
      @required bool isEnded}) = _$PostBoxSecondHand;

  @nullable
  String get imageURL;
  String get title;
  String get quality;
  double get normalPrice;
  double get price;
  String get wuliu;
  String get contact;
  bool get isEnded;
  $PostBoxSecondHandCopyWith<PostBoxSecondHand> get copyWith;
}

/// @nodoc
abstract class $PostBoxAuctionCopyWith<$Res> {
  factory $PostBoxAuctionCopyWith(
          PostBoxAuction value, $Res Function(PostBoxAuction) then) =
      _$PostBoxAuctionCopyWithImpl<$Res>;
  $Res call(
      {@nullable String imageURL,
      String title,
      String quality,
      double estimatedPrice,
      double basePrice,
      bool hasReservedPrice,
      double currentPrice,
      PostBoxAutionState state,
      String wuliu,
      String contact});

  $PostBoxAutionStateCopyWith<$Res> get state;
}

/// @nodoc
class _$PostBoxAuctionCopyWithImpl<$Res> extends _$PostBoxCopyWithImpl<$Res>
    implements $PostBoxAuctionCopyWith<$Res> {
  _$PostBoxAuctionCopyWithImpl(
      PostBoxAuction _value, $Res Function(PostBoxAuction) _then)
      : super(_value, (v) => _then(v as PostBoxAuction));

  @override
  PostBoxAuction get _value => super._value as PostBoxAuction;

  @override
  $Res call({
    Object imageURL = freezed,
    Object title = freezed,
    Object quality = freezed,
    Object estimatedPrice = freezed,
    Object basePrice = freezed,
    Object hasReservedPrice = freezed,
    Object currentPrice = freezed,
    Object state = freezed,
    Object wuliu = freezed,
    Object contact = freezed,
  }) {
    return _then(PostBoxAuction(
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      title: title == freezed ? _value.title : title as String,
      quality: quality == freezed ? _value.quality : quality as String,
      estimatedPrice: estimatedPrice == freezed
          ? _value.estimatedPrice
          : estimatedPrice as double,
      basePrice: basePrice == freezed ? _value.basePrice : basePrice as double,
      hasReservedPrice: hasReservedPrice == freezed
          ? _value.hasReservedPrice
          : hasReservedPrice as bool,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice as double,
      state: state == freezed ? _value.state : state as PostBoxAutionState,
      wuliu: wuliu == freezed ? _value.wuliu : wuliu as String,
      contact: contact == freezed ? _value.contact : contact as String,
    ));
  }

  @override
  $PostBoxAutionStateCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $PostBoxAutionStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
class _$PostBoxAuction implements PostBoxAuction {
  const _$PostBoxAuction(
      {@nullable this.imageURL,
      @required this.title,
      @required this.quality,
      @required this.estimatedPrice,
      @required this.basePrice,
      @required this.hasReservedPrice,
      @required this.currentPrice,
      @required this.state,
      @required this.wuliu,
      @required this.contact})
      : assert(title != null),
        assert(quality != null),
        assert(estimatedPrice != null),
        assert(basePrice != null),
        assert(hasReservedPrice != null),
        assert(currentPrice != null),
        assert(state != null),
        assert(wuliu != null),
        assert(contact != null);

  @override
  @nullable
  final String imageURL;
  @override
  final String title;
  @override
  final String quality;
  @override
  final double estimatedPrice;
  @override
  final double basePrice;
  @override
  final bool hasReservedPrice;
  @override
  final double currentPrice;
  @override
  final PostBoxAutionState state;
  @override
  final String wuliu;
  @override
  final String contact;

  @override
  String toString() {
    return 'PostBox.auction(imageURL: $imageURL, title: $title, quality: $quality, estimatedPrice: $estimatedPrice, basePrice: $basePrice, hasReservedPrice: $hasReservedPrice, currentPrice: $currentPrice, state: $state, wuliu: $wuliu, contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostBoxAuction &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.quality, quality) ||
                const DeepCollectionEquality()
                    .equals(other.quality, quality)) &&
            (identical(other.estimatedPrice, estimatedPrice) ||
                const DeepCollectionEquality()
                    .equals(other.estimatedPrice, estimatedPrice)) &&
            (identical(other.basePrice, basePrice) ||
                const DeepCollectionEquality()
                    .equals(other.basePrice, basePrice)) &&
            (identical(other.hasReservedPrice, hasReservedPrice) ||
                const DeepCollectionEquality()
                    .equals(other.hasReservedPrice, hasReservedPrice)) &&
            (identical(other.currentPrice, currentPrice) ||
                const DeepCollectionEquality()
                    .equals(other.currentPrice, currentPrice)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.wuliu, wuliu) ||
                const DeepCollectionEquality().equals(other.wuliu, wuliu)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(quality) ^
      const DeepCollectionEquality().hash(estimatedPrice) ^
      const DeepCollectionEquality().hash(basePrice) ^
      const DeepCollectionEquality().hash(hasReservedPrice) ^
      const DeepCollectionEquality().hash(currentPrice) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(wuliu) ^
      const DeepCollectionEquality().hash(contact);

  @override
  $PostBoxAuctionCopyWith<PostBoxAuction> get copyWith =>
      _$PostBoxAuctionCopyWithImpl<PostBoxAuction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return auction(imageURL, title, quality, estimatedPrice, basePrice,
        hasReservedPrice, currentPrice, state, wuliu, contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auction != null) {
      return auction(imageURL, title, quality, estimatedPrice, basePrice,
          hasReservedPrice, currentPrice, state, wuliu, contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return auction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auction != null) {
      return auction(this);
    }
    return orElse();
  }
}

abstract class PostBoxAuction implements PostBox {
  const factory PostBoxAuction(
      {@nullable String imageURL,
      @required String title,
      @required String quality,
      @required double estimatedPrice,
      @required double basePrice,
      @required bool hasReservedPrice,
      @required double currentPrice,
      @required PostBoxAutionState state,
      @required String wuliu,
      @required String contact}) = _$PostBoxAuction;

  @nullable
  String get imageURL;
  String get title;
  String get quality;
  double get estimatedPrice;
  double get basePrice;
  bool get hasReservedPrice;
  double get currentPrice;
  PostBoxAutionState get state;
  String get wuliu;
  String get contact;
  $PostBoxAuctionCopyWith<PostBoxAuction> get copyWith;
}

/// @nodoc
abstract class $PostBoxMoleculeCopyWith<$Res> {
  factory $PostBoxMoleculeCopyWith(
          PostBoxMolecule value, $Res Function(PostBoxMolecule) then) =
      _$PostBoxMoleculeCopyWithImpl<$Res>;
  $Res call(
      {String productName,
      double proudctValue,
      double price,
      int numerator,
      int currentDenominator,
      PostBoxMoleculeState state,
      @nullable String imageURL,
      String wuliu,
      String contact,
      List<String> attentions});

  $PostBoxMoleculeStateCopyWith<$Res> get state;
}

/// @nodoc
class _$PostBoxMoleculeCopyWithImpl<$Res> extends _$PostBoxCopyWithImpl<$Res>
    implements $PostBoxMoleculeCopyWith<$Res> {
  _$PostBoxMoleculeCopyWithImpl(
      PostBoxMolecule _value, $Res Function(PostBoxMolecule) _then)
      : super(_value, (v) => _then(v as PostBoxMolecule));

  @override
  PostBoxMolecule get _value => super._value as PostBoxMolecule;

  @override
  $Res call({
    Object productName = freezed,
    Object proudctValue = freezed,
    Object price = freezed,
    Object numerator = freezed,
    Object currentDenominator = freezed,
    Object state = freezed,
    Object imageURL = freezed,
    Object wuliu = freezed,
    Object contact = freezed,
    Object attentions = freezed,
  }) {
    return _then(PostBoxMolecule(
      productName:
          productName == freezed ? _value.productName : productName as String,
      proudctValue: proudctValue == freezed
          ? _value.proudctValue
          : proudctValue as double,
      price: price == freezed ? _value.price : price as double,
      numerator: numerator == freezed ? _value.numerator : numerator as int,
      currentDenominator: currentDenominator == freezed
          ? _value.currentDenominator
          : currentDenominator as int,
      state: state == freezed ? _value.state : state as PostBoxMoleculeState,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      wuliu: wuliu == freezed ? _value.wuliu : wuliu as String,
      contact: contact == freezed ? _value.contact : contact as String,
      attentions: attentions == freezed
          ? _value.attentions
          : attentions as List<String>,
    ));
  }

  @override
  $PostBoxMoleculeStateCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $PostBoxMoleculeStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
class _$PostBoxMolecule implements PostBoxMolecule {
  const _$PostBoxMolecule(
      {@required this.productName,
      @required this.proudctValue,
      @required this.price,
      @required this.numerator,
      @required this.currentDenominator,
      @required this.state,
      @nullable this.imageURL,
      @required this.wuliu,
      @required this.contact,
      @required this.attentions})
      : assert(productName != null),
        assert(proudctValue != null),
        assert(price != null),
        assert(numerator != null),
        assert(currentDenominator != null),
        assert(state != null),
        assert(wuliu != null),
        assert(contact != null),
        assert(attentions != null);

  @override
  final String productName;
  @override
  final double proudctValue;
  @override
  final double price;
  @override
  final int numerator;
  @override
  final int currentDenominator;
  @override
  final PostBoxMoleculeState state;
  @override
  @nullable
  final String imageURL;
  @override
  final String wuliu;
  @override
  final String contact;
  @override
  final List<String> attentions;

  @override
  String toString() {
    return 'PostBox.molecule(productName: $productName, proudctValue: $proudctValue, price: $price, numerator: $numerator, currentDenominator: $currentDenominator, state: $state, imageURL: $imageURL, wuliu: $wuliu, contact: $contact, attentions: $attentions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostBoxMolecule &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.proudctValue, proudctValue) ||
                const DeepCollectionEquality()
                    .equals(other.proudctValue, proudctValue)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.numerator, numerator) ||
                const DeepCollectionEquality()
                    .equals(other.numerator, numerator)) &&
            (identical(other.currentDenominator, currentDenominator) ||
                const DeepCollectionEquality()
                    .equals(other.currentDenominator, currentDenominator)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.wuliu, wuliu) ||
                const DeepCollectionEquality().equals(other.wuliu, wuliu)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.attentions, attentions) ||
                const DeepCollectionEquality()
                    .equals(other.attentions, attentions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(proudctValue) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(numerator) ^
      const DeepCollectionEquality().hash(currentDenominator) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(wuliu) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(attentions);

  @override
  $PostBoxMoleculeCopyWith<PostBoxMolecule> get copyWith =>
      _$PostBoxMoleculeCopyWithImpl<PostBoxMolecule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return molecule(productName, proudctValue, price, numerator,
        currentDenominator, state, imageURL, wuliu, contact, attentions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (molecule != null) {
      return molecule(productName, proudctValue, price, numerator,
          currentDenominator, state, imageURL, wuliu, contact, attentions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return molecule(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (molecule != null) {
      return molecule(this);
    }
    return orElse();
  }
}

abstract class PostBoxMolecule implements PostBox {
  const factory PostBoxMolecule(
      {@required String productName,
      @required double proudctValue,
      @required double price,
      @required int numerator,
      @required int currentDenominator,
      @required PostBoxMoleculeState state,
      @nullable String imageURL,
      @required String wuliu,
      @required String contact,
      @required List<String> attentions}) = _$PostBoxMolecule;

  String get productName;
  double get proudctValue;
  double get price;
  int get numerator;
  int get currentDenominator;
  PostBoxMoleculeState get state;
  @nullable
  String get imageURL;
  String get wuliu;
  String get contact;
  List<String> get attentions;
  $PostBoxMoleculeCopyWith<PostBoxMolecule> get copyWith;
}

/// @nodoc
abstract class $PostBoxGroupBuyCopyWith<$Res> {
  factory $PostBoxGroupBuyCopyWith(
          PostBoxGroupBuy value, $Res Function(PostBoxGroupBuy) then) =
      _$PostBoxGroupBuyCopyWithImpl<$Res>;
  $Res call(
      {@nullable String imageURL,
      String title,
      double normalPrice,
      double groupBuyPrice,
      int groupCount,
      int remainCount,
      String wuliu,
      String contact,
      bool isEnded});
}

/// @nodoc
class _$PostBoxGroupBuyCopyWithImpl<$Res> extends _$PostBoxCopyWithImpl<$Res>
    implements $PostBoxGroupBuyCopyWith<$Res> {
  _$PostBoxGroupBuyCopyWithImpl(
      PostBoxGroupBuy _value, $Res Function(PostBoxGroupBuy) _then)
      : super(_value, (v) => _then(v as PostBoxGroupBuy));

  @override
  PostBoxGroupBuy get _value => super._value as PostBoxGroupBuy;

  @override
  $Res call({
    Object imageURL = freezed,
    Object title = freezed,
    Object normalPrice = freezed,
    Object groupBuyPrice = freezed,
    Object groupCount = freezed,
    Object remainCount = freezed,
    Object wuliu = freezed,
    Object contact = freezed,
    Object isEnded = freezed,
  }) {
    return _then(PostBoxGroupBuy(
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      title: title == freezed ? _value.title : title as String,
      normalPrice:
          normalPrice == freezed ? _value.normalPrice : normalPrice as double,
      groupBuyPrice: groupBuyPrice == freezed
          ? _value.groupBuyPrice
          : groupBuyPrice as double,
      groupCount: groupCount == freezed ? _value.groupCount : groupCount as int,
      remainCount:
          remainCount == freezed ? _value.remainCount : remainCount as int,
      wuliu: wuliu == freezed ? _value.wuliu : wuliu as String,
      contact: contact == freezed ? _value.contact : contact as String,
      isEnded: isEnded == freezed ? _value.isEnded : isEnded as bool,
    ));
  }
}

/// @nodoc
class _$PostBoxGroupBuy implements PostBoxGroupBuy {
  const _$PostBoxGroupBuy(
      {@nullable this.imageURL,
      @required this.title,
      @required this.normalPrice,
      @required this.groupBuyPrice,
      @required this.groupCount,
      @required this.remainCount,
      @required this.wuliu,
      @required this.contact,
      @required this.isEnded})
      : assert(title != null),
        assert(normalPrice != null),
        assert(groupBuyPrice != null),
        assert(groupCount != null),
        assert(remainCount != null),
        assert(wuliu != null),
        assert(contact != null),
        assert(isEnded != null);

  @override
  @nullable
  final String imageURL;
  @override
  final String title;
  @override
  final double normalPrice;
  @override
  final double groupBuyPrice;
  @override
  final int groupCount;
  @override
  final int remainCount;
  @override
  final String wuliu;
  @override
  final String contact;
  @override
  final bool isEnded;

  @override
  String toString() {
    return 'PostBox.groupBuy(imageURL: $imageURL, title: $title, normalPrice: $normalPrice, groupBuyPrice: $groupBuyPrice, groupCount: $groupCount, remainCount: $remainCount, wuliu: $wuliu, contact: $contact, isEnded: $isEnded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostBoxGroupBuy &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.normalPrice, normalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.normalPrice, normalPrice)) &&
            (identical(other.groupBuyPrice, groupBuyPrice) ||
                const DeepCollectionEquality()
                    .equals(other.groupBuyPrice, groupBuyPrice)) &&
            (identical(other.groupCount, groupCount) ||
                const DeepCollectionEquality()
                    .equals(other.groupCount, groupCount)) &&
            (identical(other.remainCount, remainCount) ||
                const DeepCollectionEquality()
                    .equals(other.remainCount, remainCount)) &&
            (identical(other.wuliu, wuliu) ||
                const DeepCollectionEquality().equals(other.wuliu, wuliu)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.isEnded, isEnded) ||
                const DeepCollectionEquality().equals(other.isEnded, isEnded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(normalPrice) ^
      const DeepCollectionEquality().hash(groupBuyPrice) ^
      const DeepCollectionEquality().hash(groupCount) ^
      const DeepCollectionEquality().hash(remainCount) ^
      const DeepCollectionEquality().hash(wuliu) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(isEnded);

  @override
  $PostBoxGroupBuyCopyWith<PostBoxGroupBuy> get copyWith =>
      _$PostBoxGroupBuyCopyWithImpl<PostBoxGroupBuy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return groupBuy(imageURL, title, normalPrice, groupBuyPrice, groupCount,
        remainCount, wuliu, contact, isEnded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (groupBuy != null) {
      return groupBuy(imageURL, title, normalPrice, groupBuyPrice, groupCount,
          remainCount, wuliu, contact, isEnded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return groupBuy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (groupBuy != null) {
      return groupBuy(this);
    }
    return orElse();
  }
}

abstract class PostBoxGroupBuy implements PostBox {
  const factory PostBoxGroupBuy(
      {@nullable String imageURL,
      @required String title,
      @required double normalPrice,
      @required double groupBuyPrice,
      @required int groupCount,
      @required int remainCount,
      @required String wuliu,
      @required String contact,
      @required bool isEnded}) = _$PostBoxGroupBuy;

  @nullable
  String get imageURL;
  String get title;
  double get normalPrice;
  double get groupBuyPrice;
  int get groupCount;
  int get remainCount;
  String get wuliu;
  String get contact;
  bool get isEnded;
  $PostBoxGroupBuyCopyWith<PostBoxGroupBuy> get copyWith;
}

/// @nodoc
abstract class $PostBoxWorkCopyWith<$Res> {
  factory $PostBoxWorkCopyWith(
          PostBoxWork value, $Res Function(PostBoxWork) then) =
      _$PostBoxWorkCopyWithImpl<$Res>;
  $Res call(
      {@nullable String imageURL,
      String title,
      double price,
      double normalPrice,
      double orderPrice,
      int count,
      String quality,
      String wuliu,
      String contact});
}

/// @nodoc
class _$PostBoxWorkCopyWithImpl<$Res> extends _$PostBoxCopyWithImpl<$Res>
    implements $PostBoxWorkCopyWith<$Res> {
  _$PostBoxWorkCopyWithImpl(
      PostBoxWork _value, $Res Function(PostBoxWork) _then)
      : super(_value, (v) => _then(v as PostBoxWork));

  @override
  PostBoxWork get _value => super._value as PostBoxWork;

  @override
  $Res call({
    Object imageURL = freezed,
    Object title = freezed,
    Object price = freezed,
    Object normalPrice = freezed,
    Object orderPrice = freezed,
    Object count = freezed,
    Object quality = freezed,
    Object wuliu = freezed,
    Object contact = freezed,
  }) {
    return _then(PostBoxWork(
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as double,
      normalPrice:
          normalPrice == freezed ? _value.normalPrice : normalPrice as double,
      orderPrice:
          orderPrice == freezed ? _value.orderPrice : orderPrice as double,
      count: count == freezed ? _value.count : count as int,
      quality: quality == freezed ? _value.quality : quality as String,
      wuliu: wuliu == freezed ? _value.wuliu : wuliu as String,
      contact: contact == freezed ? _value.contact : contact as String,
    ));
  }
}

/// @nodoc
class _$PostBoxWork implements PostBoxWork {
  const _$PostBoxWork(
      {@nullable this.imageURL,
      @required this.title,
      @required this.price,
      @required this.normalPrice,
      @required this.orderPrice,
      @required this.count,
      @required this.quality,
      @required this.wuliu,
      @required this.contact})
      : assert(title != null),
        assert(price != null),
        assert(normalPrice != null),
        assert(orderPrice != null),
        assert(count != null),
        assert(quality != null),
        assert(wuliu != null),
        assert(contact != null);

  @override
  @nullable
  final String imageURL;
  @override
  final String title;
  @override
  final double price;
  @override
  final double normalPrice;
  @override
  final double orderPrice;
  @override
  final int count;
  @override
  final String quality;
  @override
  final String wuliu;
  @override
  final String contact;

  @override
  String toString() {
    return 'PostBox.work(imageURL: $imageURL, title: $title, price: $price, normalPrice: $normalPrice, orderPrice: $orderPrice, count: $count, quality: $quality, wuliu: $wuliu, contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostBoxWork &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.normalPrice, normalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.normalPrice, normalPrice)) &&
            (identical(other.orderPrice, orderPrice) ||
                const DeepCollectionEquality()
                    .equals(other.orderPrice, orderPrice)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.quality, quality) ||
                const DeepCollectionEquality()
                    .equals(other.quality, quality)) &&
            (identical(other.wuliu, wuliu) ||
                const DeepCollectionEquality().equals(other.wuliu, wuliu)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(normalPrice) ^
      const DeepCollectionEquality().hash(orderPrice) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(quality) ^
      const DeepCollectionEquality().hash(wuliu) ^
      const DeepCollectionEquality().hash(contact);

  @override
  $PostBoxWorkCopyWith<PostBoxWork> get copyWith =>
      _$PostBoxWorkCopyWithImpl<PostBoxWork>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return work(imageURL, title, price, normalPrice, orderPrice, count, quality,
        wuliu, contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (work != null) {
      return work(imageURL, title, price, normalPrice, orderPrice, count,
          quality, wuliu, contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return work(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (work != null) {
      return work(this);
    }
    return orElse();
  }
}

abstract class PostBoxWork implements PostBox {
  const factory PostBoxWork(
      {@nullable String imageURL,
      @required String title,
      @required double price,
      @required double normalPrice,
      @required double orderPrice,
      @required int count,
      @required String quality,
      @required String wuliu,
      @required String contact}) = _$PostBoxWork;

  @nullable
  String get imageURL;
  String get title;
  double get price;
  double get normalPrice;
  double get orderPrice;
  int get count;
  String get quality;
  String get wuliu;
  String get contact;
  $PostBoxWorkCopyWith<PostBoxWork> get copyWith;
}

/// @nodoc
abstract class $PostBoxServiceCopyWith<$Res> {
  factory $PostBoxServiceCopyWith(
          PostBoxService value, $Res Function(PostBoxService) then) =
      _$PostBoxServiceCopyWithImpl<$Res>;
  $Res call(
      {@nullable String imageURL,
      String skill,
      double price,
      String schedule,
      String contact,
      bool serviceIsAvaliable});
}

/// @nodoc
class _$PostBoxServiceCopyWithImpl<$Res> extends _$PostBoxCopyWithImpl<$Res>
    implements $PostBoxServiceCopyWith<$Res> {
  _$PostBoxServiceCopyWithImpl(
      PostBoxService _value, $Res Function(PostBoxService) _then)
      : super(_value, (v) => _then(v as PostBoxService));

  @override
  PostBoxService get _value => super._value as PostBoxService;

  @override
  $Res call({
    Object imageURL = freezed,
    Object skill = freezed,
    Object price = freezed,
    Object schedule = freezed,
    Object contact = freezed,
    Object serviceIsAvaliable = freezed,
  }) {
    return _then(PostBoxService(
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
      skill: skill == freezed ? _value.skill : skill as String,
      price: price == freezed ? _value.price : price as double,
      schedule: schedule == freezed ? _value.schedule : schedule as String,
      contact: contact == freezed ? _value.contact : contact as String,
      serviceIsAvaliable: serviceIsAvaliable == freezed
          ? _value.serviceIsAvaliable
          : serviceIsAvaliable as bool,
    ));
  }
}

/// @nodoc
class _$PostBoxService implements PostBoxService {
  const _$PostBoxService(
      {@nullable this.imageURL,
      @required this.skill,
      @required this.price,
      @required this.schedule,
      @required this.contact,
      @required this.serviceIsAvaliable})
      : assert(skill != null),
        assert(price != null),
        assert(schedule != null),
        assert(contact != null),
        assert(serviceIsAvaliable != null);

  @override
  @nullable
  final String imageURL;
  @override
  final String skill;
  @override
  final double price;
  @override
  final String schedule;
  @override
  final String contact;
  @override
  final bool serviceIsAvaliable;

  @override
  String toString() {
    return 'PostBox.service(imageURL: $imageURL, skill: $skill, price: $price, schedule: $schedule, contact: $contact, serviceIsAvaliable: $serviceIsAvaliable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostBoxService &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.skill, skill) ||
                const DeepCollectionEquality().equals(other.skill, skill)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.serviceIsAvaliable, serviceIsAvaliable) ||
                const DeepCollectionEquality()
                    .equals(other.serviceIsAvaliable, serviceIsAvaliable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(skill) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(serviceIsAvaliable);

  @override
  $PostBoxServiceCopyWith<PostBoxService> get copyWith =>
      _$PostBoxServiceCopyWithImpl<PostBoxService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult topic(),
    @required
        TResult secondHand(
            @nullable String imageURL,
            String title,
            String quality,
            double normalPrice,
            double price,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult auction(
            @nullable String imageURL,
            String title,
            String quality,
            double estimatedPrice,
            double basePrice,
            bool hasReservedPrice,
            double currentPrice,
            PostBoxAutionState state,
            String wuliu,
            String contact),
    @required
        TResult molecule(
            String productName,
            double proudctValue,
            double price,
            int numerator,
            int currentDenominator,
            PostBoxMoleculeState state,
            @nullable String imageURL,
            String wuliu,
            String contact,
            List<String> attentions),
    @required
        TResult groupBuy(
            @nullable String imageURL,
            String title,
            double normalPrice,
            double groupBuyPrice,
            int groupCount,
            int remainCount,
            String wuliu,
            String contact,
            bool isEnded),
    @required
        TResult work(
            @nullable String imageURL,
            String title,
            double price,
            double normalPrice,
            double orderPrice,
            int count,
            String quality,
            String wuliu,
            String contact),
    @required
        TResult service(@nullable String imageURL, String skill, double price,
            String schedule, String contact, bool serviceIsAvaliable),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return service(
        imageURL, skill, price, schedule, contact, serviceIsAvaliable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topic(),
    TResult secondHand(
        @nullable String imageURL,
        String title,
        String quality,
        double normalPrice,
        double price,
        String wuliu,
        String contact,
        bool isEnded),
    TResult auction(
        @nullable String imageURL,
        String title,
        String quality,
        double estimatedPrice,
        double basePrice,
        bool hasReservedPrice,
        double currentPrice,
        PostBoxAutionState state,
        String wuliu,
        String contact),
    TResult molecule(
        String productName,
        double proudctValue,
        double price,
        int numerator,
        int currentDenominator,
        PostBoxMoleculeState state,
        @nullable String imageURL,
        String wuliu,
        String contact,
        List<String> attentions),
    TResult groupBuy(
        @nullable String imageURL,
        String title,
        double normalPrice,
        double groupBuyPrice,
        int groupCount,
        int remainCount,
        String wuliu,
        String contact,
        bool isEnded),
    TResult work(
        @nullable String imageURL,
        String title,
        double price,
        double normalPrice,
        double orderPrice,
        int count,
        String quality,
        String wuliu,
        String contact),
    TResult service(@nullable String imageURL, String skill, double price,
        String schedule, String contact, bool serviceIsAvaliable),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (service != null) {
      return service(
          imageURL, skill, price, schedule, contact, serviceIsAvaliable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topic(PostBoxTopic value),
    @required TResult secondHand(PostBoxSecondHand value),
    @required TResult auction(PostBoxAuction value),
    @required TResult molecule(PostBoxMolecule value),
    @required TResult groupBuy(PostBoxGroupBuy value),
    @required TResult work(PostBoxWork value),
    @required TResult service(PostBoxService value),
  }) {
    assert(topic != null);
    assert(secondHand != null);
    assert(auction != null);
    assert(molecule != null);
    assert(groupBuy != null);
    assert(work != null);
    assert(service != null);
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topic(PostBoxTopic value),
    TResult secondHand(PostBoxSecondHand value),
    TResult auction(PostBoxAuction value),
    TResult molecule(PostBoxMolecule value),
    TResult groupBuy(PostBoxGroupBuy value),
    TResult work(PostBoxWork value),
    TResult service(PostBoxService value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class PostBoxService implements PostBox {
  const factory PostBoxService(
      {@nullable String imageURL,
      @required String skill,
      @required double price,
      @required String schedule,
      @required String contact,
      @required bool serviceIsAvaliable}) = _$PostBoxService;

  @nullable
  String get imageURL;
  String get skill;
  double get price;
  String get schedule;
  String get contact;
  bool get serviceIsAvaliable;
  $PostBoxServiceCopyWith<PostBoxService> get copyWith;
}

/// @nodoc
class _$PostBoxMoleculeStateTearOff {
  const _$PostBoxMoleculeStateTearOff();

// ignore: unused_element
  _MoleculeInProgress inProgress(int countDown) {
    return _MoleculeInProgress(
      countDown,
    );
  }

// ignore: unused_element
  _MoleculeEnded ended(String since, @nullable List<int> numeratorFloors) {
    return _MoleculeEnded(
      since,
      numeratorFloors,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostBoxMoleculeState = _$PostBoxMoleculeStateTearOff();

/// @nodoc
mixin _$PostBoxMoleculeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inProgress(int countDown),
    @required TResult ended(String since, @nullable List<int> numeratorFloors),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inProgress(int countDown),
    TResult ended(String since, @nullable List<int> numeratorFloors),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inProgress(_MoleculeInProgress value),
    @required TResult ended(_MoleculeEnded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inProgress(_MoleculeInProgress value),
    TResult ended(_MoleculeEnded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PostBoxMoleculeStateCopyWith<$Res> {
  factory $PostBoxMoleculeStateCopyWith(PostBoxMoleculeState value,
          $Res Function(PostBoxMoleculeState) then) =
      _$PostBoxMoleculeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostBoxMoleculeStateCopyWithImpl<$Res>
    implements $PostBoxMoleculeStateCopyWith<$Res> {
  _$PostBoxMoleculeStateCopyWithImpl(this._value, this._then);

  final PostBoxMoleculeState _value;
  // ignore: unused_field
  final $Res Function(PostBoxMoleculeState) _then;
}

/// @nodoc
abstract class _$MoleculeInProgressCopyWith<$Res> {
  factory _$MoleculeInProgressCopyWith(
          _MoleculeInProgress value, $Res Function(_MoleculeInProgress) then) =
      __$MoleculeInProgressCopyWithImpl<$Res>;
  $Res call({int countDown});
}

/// @nodoc
class __$MoleculeInProgressCopyWithImpl<$Res>
    extends _$PostBoxMoleculeStateCopyWithImpl<$Res>
    implements _$MoleculeInProgressCopyWith<$Res> {
  __$MoleculeInProgressCopyWithImpl(
      _MoleculeInProgress _value, $Res Function(_MoleculeInProgress) _then)
      : super(_value, (v) => _then(v as _MoleculeInProgress));

  @override
  _MoleculeInProgress get _value => super._value as _MoleculeInProgress;

  @override
  $Res call({
    Object countDown = freezed,
  }) {
    return _then(_MoleculeInProgress(
      countDown == freezed ? _value.countDown : countDown as int,
    ));
  }
}

/// @nodoc
class _$_MoleculeInProgress implements _MoleculeInProgress {
  const _$_MoleculeInProgress(this.countDown) : assert(countDown != null);

  @override
  final int countDown;

  @override
  String toString() {
    return 'PostBoxMoleculeState.inProgress(countDown: $countDown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoleculeInProgress &&
            (identical(other.countDown, countDown) ||
                const DeepCollectionEquality()
                    .equals(other.countDown, countDown)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countDown);

  @override
  _$MoleculeInProgressCopyWith<_MoleculeInProgress> get copyWith =>
      __$MoleculeInProgressCopyWithImpl<_MoleculeInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inProgress(int countDown),
    @required TResult ended(String since, @nullable List<int> numeratorFloors),
  }) {
    assert(inProgress != null);
    assert(ended != null);
    return inProgress(countDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inProgress(int countDown),
    TResult ended(String since, @nullable List<int> numeratorFloors),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(countDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inProgress(_MoleculeInProgress value),
    @required TResult ended(_MoleculeEnded value),
  }) {
    assert(inProgress != null);
    assert(ended != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inProgress(_MoleculeInProgress value),
    TResult ended(_MoleculeEnded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _MoleculeInProgress implements PostBoxMoleculeState {
  const factory _MoleculeInProgress(int countDown) = _$_MoleculeInProgress;

  int get countDown;
  _$MoleculeInProgressCopyWith<_MoleculeInProgress> get copyWith;
}

/// @nodoc
abstract class _$MoleculeEndedCopyWith<$Res> {
  factory _$MoleculeEndedCopyWith(
          _MoleculeEnded value, $Res Function(_MoleculeEnded) then) =
      __$MoleculeEndedCopyWithImpl<$Res>;
  $Res call({String since, @nullable List<int> numeratorFloors});
}

/// @nodoc
class __$MoleculeEndedCopyWithImpl<$Res>
    extends _$PostBoxMoleculeStateCopyWithImpl<$Res>
    implements _$MoleculeEndedCopyWith<$Res> {
  __$MoleculeEndedCopyWithImpl(
      _MoleculeEnded _value, $Res Function(_MoleculeEnded) _then)
      : super(_value, (v) => _then(v as _MoleculeEnded));

  @override
  _MoleculeEnded get _value => super._value as _MoleculeEnded;

  @override
  $Res call({
    Object since = freezed,
    Object numeratorFloors = freezed,
  }) {
    return _then(_MoleculeEnded(
      since == freezed ? _value.since : since as String,
      numeratorFloors == freezed
          ? _value.numeratorFloors
          : numeratorFloors as List<int>,
    ));
  }
}

/// @nodoc
class _$_MoleculeEnded implements _MoleculeEnded {
  const _$_MoleculeEnded(this.since, @nullable this.numeratorFloors)
      : assert(since != null);

  @override
  final String since;
  @override
  @nullable
  final List<int> numeratorFloors;

  @override
  String toString() {
    return 'PostBoxMoleculeState.ended(since: $since, numeratorFloors: $numeratorFloors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoleculeEnded &&
            (identical(other.since, since) ||
                const DeepCollectionEquality().equals(other.since, since)) &&
            (identical(other.numeratorFloors, numeratorFloors) ||
                const DeepCollectionEquality()
                    .equals(other.numeratorFloors, numeratorFloors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(since) ^
      const DeepCollectionEquality().hash(numeratorFloors);

  @override
  _$MoleculeEndedCopyWith<_MoleculeEnded> get copyWith =>
      __$MoleculeEndedCopyWithImpl<_MoleculeEnded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inProgress(int countDown),
    @required TResult ended(String since, @nullable List<int> numeratorFloors),
  }) {
    assert(inProgress != null);
    assert(ended != null);
    return ended(since, numeratorFloors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inProgress(int countDown),
    TResult ended(String since, @nullable List<int> numeratorFloors),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ended != null) {
      return ended(since, numeratorFloors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inProgress(_MoleculeInProgress value),
    @required TResult ended(_MoleculeEnded value),
  }) {
    assert(inProgress != null);
    assert(ended != null);
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inProgress(_MoleculeInProgress value),
    TResult ended(_MoleculeEnded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class _MoleculeEnded implements PostBoxMoleculeState {
  const factory _MoleculeEnded(
      String since, @nullable List<int> numeratorFloors) = _$_MoleculeEnded;

  String get since;
  @nullable
  List<int> get numeratorFloors;
  _$MoleculeEndedCopyWith<_MoleculeEnded> get copyWith;
}

/// @nodoc
class _$PostBoxAutionStateTearOff {
  const _$PostBoxAutionStateTearOff();

// ignore: unused_element
  _AutionInProgress inProgress(int countDown) {
    return _AutionInProgress(
      countDown,
    );
  }

// ignore: unused_element
  _AutionFailed failed(String since, String reason) {
    return _AutionFailed(
      since,
      reason,
    );
  }

// ignore: unused_element
  _AutionEnded ended(
      String since, @nullable String dealUserName, @nullable double dealPrice) {
    return _AutionEnded(
      since,
      dealUserName,
      dealPrice,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostBoxAutionState = _$PostBoxAutionStateTearOff();

/// @nodoc
mixin _$PostBoxAutionState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inProgress(int countDown),
    @required TResult failed(String since, String reason),
    @required
        TResult ended(String since, @nullable String dealUserName,
            @nullable double dealPrice),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inProgress(int countDown),
    TResult failed(String since, String reason),
    TResult ended(String since, @nullable String dealUserName,
        @nullable double dealPrice),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inProgress(_AutionInProgress value),
    @required TResult failed(_AutionFailed value),
    @required TResult ended(_AutionEnded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inProgress(_AutionInProgress value),
    TResult failed(_AutionFailed value),
    TResult ended(_AutionEnded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PostBoxAutionStateCopyWith<$Res> {
  factory $PostBoxAutionStateCopyWith(
          PostBoxAutionState value, $Res Function(PostBoxAutionState) then) =
      _$PostBoxAutionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostBoxAutionStateCopyWithImpl<$Res>
    implements $PostBoxAutionStateCopyWith<$Res> {
  _$PostBoxAutionStateCopyWithImpl(this._value, this._then);

  final PostBoxAutionState _value;
  // ignore: unused_field
  final $Res Function(PostBoxAutionState) _then;
}

/// @nodoc
abstract class _$AutionInProgressCopyWith<$Res> {
  factory _$AutionInProgressCopyWith(
          _AutionInProgress value, $Res Function(_AutionInProgress) then) =
      __$AutionInProgressCopyWithImpl<$Res>;
  $Res call({int countDown});
}

/// @nodoc
class __$AutionInProgressCopyWithImpl<$Res>
    extends _$PostBoxAutionStateCopyWithImpl<$Res>
    implements _$AutionInProgressCopyWith<$Res> {
  __$AutionInProgressCopyWithImpl(
      _AutionInProgress _value, $Res Function(_AutionInProgress) _then)
      : super(_value, (v) => _then(v as _AutionInProgress));

  @override
  _AutionInProgress get _value => super._value as _AutionInProgress;

  @override
  $Res call({
    Object countDown = freezed,
  }) {
    return _then(_AutionInProgress(
      countDown == freezed ? _value.countDown : countDown as int,
    ));
  }
}

/// @nodoc
class _$_AutionInProgress implements _AutionInProgress {
  const _$_AutionInProgress(this.countDown) : assert(countDown != null);

  @override
  final int countDown;

  @override
  String toString() {
    return 'PostBoxAutionState.inProgress(countDown: $countDown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AutionInProgress &&
            (identical(other.countDown, countDown) ||
                const DeepCollectionEquality()
                    .equals(other.countDown, countDown)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countDown);

  @override
  _$AutionInProgressCopyWith<_AutionInProgress> get copyWith =>
      __$AutionInProgressCopyWithImpl<_AutionInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inProgress(int countDown),
    @required TResult failed(String since, String reason),
    @required
        TResult ended(String since, @nullable String dealUserName,
            @nullable double dealPrice),
  }) {
    assert(inProgress != null);
    assert(failed != null);
    assert(ended != null);
    return inProgress(countDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inProgress(int countDown),
    TResult failed(String since, String reason),
    TResult ended(String since, @nullable String dealUserName,
        @nullable double dealPrice),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(countDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inProgress(_AutionInProgress value),
    @required TResult failed(_AutionFailed value),
    @required TResult ended(_AutionEnded value),
  }) {
    assert(inProgress != null);
    assert(failed != null);
    assert(ended != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inProgress(_AutionInProgress value),
    TResult failed(_AutionFailed value),
    TResult ended(_AutionEnded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _AutionInProgress implements PostBoxAutionState {
  const factory _AutionInProgress(int countDown) = _$_AutionInProgress;

  int get countDown;
  _$AutionInProgressCopyWith<_AutionInProgress> get copyWith;
}

/// @nodoc
abstract class _$AutionFailedCopyWith<$Res> {
  factory _$AutionFailedCopyWith(
          _AutionFailed value, $Res Function(_AutionFailed) then) =
      __$AutionFailedCopyWithImpl<$Res>;
  $Res call({String since, String reason});
}

/// @nodoc
class __$AutionFailedCopyWithImpl<$Res>
    extends _$PostBoxAutionStateCopyWithImpl<$Res>
    implements _$AutionFailedCopyWith<$Res> {
  __$AutionFailedCopyWithImpl(
      _AutionFailed _value, $Res Function(_AutionFailed) _then)
      : super(_value, (v) => _then(v as _AutionFailed));

  @override
  _AutionFailed get _value => super._value as _AutionFailed;

  @override
  $Res call({
    Object since = freezed,
    Object reason = freezed,
  }) {
    return _then(_AutionFailed(
      since == freezed ? _value.since : since as String,
      reason == freezed ? _value.reason : reason as String,
    ));
  }
}

/// @nodoc
class _$_AutionFailed implements _AutionFailed {
  const _$_AutionFailed(this.since, this.reason)
      : assert(since != null),
        assert(reason != null);

  @override
  final String since;
  @override
  final String reason;

  @override
  String toString() {
    return 'PostBoxAutionState.failed(since: $since, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AutionFailed &&
            (identical(other.since, since) ||
                const DeepCollectionEquality().equals(other.since, since)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(since) ^
      const DeepCollectionEquality().hash(reason);

  @override
  _$AutionFailedCopyWith<_AutionFailed> get copyWith =>
      __$AutionFailedCopyWithImpl<_AutionFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inProgress(int countDown),
    @required TResult failed(String since, String reason),
    @required
        TResult ended(String since, @nullable String dealUserName,
            @nullable double dealPrice),
  }) {
    assert(inProgress != null);
    assert(failed != null);
    assert(ended != null);
    return failed(since, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inProgress(int countDown),
    TResult failed(String since, String reason),
    TResult ended(String since, @nullable String dealUserName,
        @nullable double dealPrice),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(since, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inProgress(_AutionInProgress value),
    @required TResult failed(_AutionFailed value),
    @required TResult ended(_AutionEnded value),
  }) {
    assert(inProgress != null);
    assert(failed != null);
    assert(ended != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inProgress(_AutionInProgress value),
    TResult failed(_AutionFailed value),
    TResult ended(_AutionEnded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AutionFailed implements PostBoxAutionState {
  const factory _AutionFailed(String since, String reason) = _$_AutionFailed;

  String get since;
  String get reason;
  _$AutionFailedCopyWith<_AutionFailed> get copyWith;
}

/// @nodoc
abstract class _$AutionEndedCopyWith<$Res> {
  factory _$AutionEndedCopyWith(
          _AutionEnded value, $Res Function(_AutionEnded) then) =
      __$AutionEndedCopyWithImpl<$Res>;
  $Res call(
      {String since,
      @nullable String dealUserName,
      @nullable double dealPrice});
}

/// @nodoc
class __$AutionEndedCopyWithImpl<$Res>
    extends _$PostBoxAutionStateCopyWithImpl<$Res>
    implements _$AutionEndedCopyWith<$Res> {
  __$AutionEndedCopyWithImpl(
      _AutionEnded _value, $Res Function(_AutionEnded) _then)
      : super(_value, (v) => _then(v as _AutionEnded));

  @override
  _AutionEnded get _value => super._value as _AutionEnded;

  @override
  $Res call({
    Object since = freezed,
    Object dealUserName = freezed,
    Object dealPrice = freezed,
  }) {
    return _then(_AutionEnded(
      since == freezed ? _value.since : since as String,
      dealUserName == freezed ? _value.dealUserName : dealUserName as String,
      dealPrice == freezed ? _value.dealPrice : dealPrice as double,
    ));
  }
}

/// @nodoc
class _$_AutionEnded implements _AutionEnded {
  const _$_AutionEnded(
      this.since, @nullable this.dealUserName, @nullable this.dealPrice)
      : assert(since != null);

  @override
  final String since;
  @override
  @nullable
  final String dealUserName;
  @override
  @nullable
  final double dealPrice;

  @override
  String toString() {
    return 'PostBoxAutionState.ended(since: $since, dealUserName: $dealUserName, dealPrice: $dealPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AutionEnded &&
            (identical(other.since, since) ||
                const DeepCollectionEquality().equals(other.since, since)) &&
            (identical(other.dealUserName, dealUserName) ||
                const DeepCollectionEquality()
                    .equals(other.dealUserName, dealUserName)) &&
            (identical(other.dealPrice, dealPrice) ||
                const DeepCollectionEquality()
                    .equals(other.dealPrice, dealPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(since) ^
      const DeepCollectionEquality().hash(dealUserName) ^
      const DeepCollectionEquality().hash(dealPrice);

  @override
  _$AutionEndedCopyWith<_AutionEnded> get copyWith =>
      __$AutionEndedCopyWithImpl<_AutionEnded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult inProgress(int countDown),
    @required TResult failed(String since, String reason),
    @required
        TResult ended(String since, @nullable String dealUserName,
            @nullable double dealPrice),
  }) {
    assert(inProgress != null);
    assert(failed != null);
    assert(ended != null);
    return ended(since, dealUserName, dealPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult inProgress(int countDown),
    TResult failed(String since, String reason),
    TResult ended(String since, @nullable String dealUserName,
        @nullable double dealPrice),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ended != null) {
      return ended(since, dealUserName, dealPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult inProgress(_AutionInProgress value),
    @required TResult failed(_AutionFailed value),
    @required TResult ended(_AutionEnded value),
  }) {
    assert(inProgress != null);
    assert(failed != null);
    assert(ended != null);
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult inProgress(_AutionInProgress value),
    TResult failed(_AutionFailed value),
    TResult ended(_AutionEnded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class _AutionEnded implements PostBoxAutionState {
  const factory _AutionEnded(String since, @nullable String dealUserName,
      @nullable double dealPrice) = _$_AutionEnded;

  String get since;
  @nullable
  String get dealUserName;
  @nullable
  double get dealPrice;
  _$AutionEndedCopyWith<_AutionEnded> get copyWith;
}
