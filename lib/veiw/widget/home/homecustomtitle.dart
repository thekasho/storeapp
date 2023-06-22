import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class HomeCustomTitle extends StatelessWidget {

  final String title;

  const HomeCustomTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 15.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 23.0,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
