import 'package:meta/meta.dart';

import 'user.dart';

class Post {
  const Post({
    @required this.id,
    @required this.title,
    @required this.text,
    @required this.navigationTitle,
    @required this.navigationUrl,
    @required this.shareURL,
    @required this.starCount,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.insights,
    @required this.author,
  });

  final int id;
  final String title;

  final String text; // markdown
  final String navigationTitle;
  final String navigationUrl;
  final String shareURL;
  final int starCount;
  final int createdAt;
  final int updatedAt;
  final int insights;
  final User author;
}
