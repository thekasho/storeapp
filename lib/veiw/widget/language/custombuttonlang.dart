import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomButtonLang extends StatelessWidget {

  final String textbutton;
  final void Function()? onPressed;

  const CustomButtonLang({
    super.key, required this.textbutton, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 100.0),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.primaryColor,
        child: Text(textbutton, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0),),
      ),
    );
  }
}