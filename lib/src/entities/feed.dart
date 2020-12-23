import 'package:meta/meta.dart';

import 'club.dart';
import 'user.dart';

class Feed {
  const Feed({
    @required this.type,
    @required this.url,
    @required this.title,
    @required this.summery,
    @required this.commentCount,
    @required this.starCount,
    @required this.insights,
    @required this.author,
    @required this.club,
    @required this.lastReplyAt,
    this.lastReplyUserName,
    this.box,
  });

  int get id => int.parse(url.split('/').last);

  final String type;
  final String url;
  final String title;
  final String summery;
  final int commentCount;
  final int starCount;
  final int insights;
  final User author;
  final Club club;
  final int lastReplyAt;
  final String lastReplyUserName;
  final FeedBox box;
}

class FeedBox {
  const FeedBox({
    @required this.imageUrl,
    @required this.text1,
    @required this.text2,
    @required this.text3,
  });

  final String imageUrl;
  final String text1;
  final String text2;
  final String text3;
}
