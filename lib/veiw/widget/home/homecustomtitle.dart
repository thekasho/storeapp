import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class HomeCustomTitle extends StatelessWidget {

  final String title;

  const HomeCustomTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 20.0,
          color: AppColor.primaryColor,
          fontWeight: FontWeight.bold),
    );
  }
}
