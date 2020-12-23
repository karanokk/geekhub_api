import 'package:meta/meta.dart';

import 'user.dart';

class Club {
  const Club({
    @required this.name,
    @required this.url,
    this.administrator,
    this.description,
    this.topicCount,
    this.followerCount,
    this.descriptionFull,
    this.rule,
  });

  final String name;
  final String url;

  /// 管理员
  final User administrator;

  /// 描述
  final String description;

  /// 话题数
  final int topicCount;

  /// 关注人数
  final int followerCount;

  /// 完整描述
  final String descriptionFull;

  /// 版规
  /// 如 '不许发非法的帖子！'
  final String rule;
}
