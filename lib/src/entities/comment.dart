import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'comment.freezed.dart';

@freezed
abstract class Comment with _$Comment {
  const factory Comment.text({
    @required User user,
    // comment
    @required int id,
    @required String source,
    @required String text,
    @required int floor,
    @required int createdAt,
    @required int starCount,
    @nullable String inReplyToUserName,
    @nullable String inReplyToCommentText,
  }) = CommentText;

  const factory Comment.bid({
    @required double price,
    @required int floor,
    @required int createdAt,
    @required User bidder,
  }) = CommentBid;
}
