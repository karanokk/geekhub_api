import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'user.dart';

part 'post.freezed.dart';

class Post {
  const Post({
    @required this.id,
    @required this.type,
    @required this.title,
    @required this.text,
    @required this.box,
    @required this.shareURL,
    @required this.starCount,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.insights,
    @required this.author,
    this.navigationTitle,
    this.navigationUrl,
  });

  final int id;
  final String type;
  final String title;

  final String text;
  final PostBox box;
  final String shareURL;
  final int starCount;
  final int createdAt;
  final int updatedAt;
  final int insights;
  final User author;
  final String navigationTitle;
  final String navigationUrl;
}

@freezed
abstract class PostBox with _$PostBox {
  const factory PostBox.topic() = PostBoxTopic;

  const factory PostBox.secondHand({
    @nullable String imageURL,
    @required String title,
    @required String quality,
    @required double normalPrice,
    @required double price,
    @required String wuliu,
    @required String contact,
    @required bool isEnded,
  }) = PostBoxSecondHand;

  const factory PostBox.auction({
    @nullable String imageURL,
    @required String title,
    @required String quality,
    @required double estimatedPrice,
    @required double basePrice,
    @required bool hasReservedPrice,
    @required double currentPrice,
    @required PostBoxAutionState state,
    @required String wuliu,
    @required String contact,
  }) = PostBoxAuction;

  const factory PostBox.molecule({
    @required String productName,
    @required double proudctValue,
    @required double price,
    @required int numerator,
    @required int currentDenominator,
    @required PostBoxMoleculeState state,
    @nullable String imageURL,
    @required String wuliu,
    @required String contact,
    @required List<String> attentions,
  }) = PostBoxMolecule;

  const factory PostBox.groupBuy({
    @nullable String imageURL,
    @required String title,
    @required double normalPrice,
    @required double groupBuyPrice,
    @required int groupCount,
    @required int remainCount,
    @required String wuliu,
    @required String contact,
    @required bool isEnded,
  }) = PostBoxGroupBuy;

  const factory PostBox.work({
    @nullable String imageURL,
    @required String title,
    @required double price,
    @required double normalPrice,
    @required double orderPrice,
    @required int count,
    @required String quality,
    @required String wuliu,
    @required String contact,
  }) = PostBoxWork;

  const factory PostBox.service({
    @nullable String imageURL,
    @required String skill,
    @required double price,
    @required String schedule,
    @required String contact,
    @required bool serviceIsAvaliable,
  }) = PostBoxService;
}

@freezed
abstract class PostBoxMoleculeState with _$PostBoxMoleculeState {
  const factory PostBoxMoleculeState.inProgress(int countDown) =
      _MoleculeInProgress;
  const factory PostBoxMoleculeState.ended(
      String since, @nullable List<int> numeratorFloors) = _MoleculeEnded;
}

@freezed
abstract class PostBoxAutionState with _$PostBoxAutionState {
  const factory PostBoxAutionState.inProgress(int countDown) =
      _AutionInProgress;
  const factory PostBoxAutionState.failed(String since, String reason) =
      _AutionFailed;
  const factory PostBoxAutionState.ended(String since,
      @nullable String dealUserName, @nullable double dealPrice) = _AutionEnded;
}
