import 'package:meta/meta.dart';

import 'medal.dart';

class User {
  const User({
    @required this.name,
    @required this.imageUrl,
    @required this.medals,
  });

  final String name;
  final String imageUrl;
  final List<Medal> medals;
}
