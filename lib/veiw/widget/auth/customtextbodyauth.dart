import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomTextBodyAuth extends StatelessWidget {

  final String text;

  const CustomTextBodyAuth({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColor.grey),
      ),
    );
  }
}