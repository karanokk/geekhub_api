import 'package:meta/meta.dart';

import 'medal.dart';

class User {
  const User({
    @required this.name,
    @required this.imageUrl,
    @required this.medals,
    this.id,
    this.memberID,
    this.createdAt,
    this.group,
    this.url,
    this.bio,
    this.company,
    this.job,
    this.location,
    this.weight,
    this.starCount,
    this.gbitCount,
    this.following,
    this.score,
    this.twitter,
    this.telegram,
    this.wechat,
    this.weibo,
  });

  final String name;
  final String imageUrl;
  final List<Medal> medals;
  // nullable
  final int id;
  final int memberID;
  final DateTime createdAt; // 加入时间
  final String group; // 用户组
  final String url;
  final String bio; // 签名
  final String company; // 公司
  final String job; // 工作职位
  final String location; // 所在地
  final int weight;
  final int starCount;
  final int gbitCount;
  final bool following;
  final double score;
  // social
  final String twitter;
  final String telegram;
  final String wechat;
  final String weibo;
}
