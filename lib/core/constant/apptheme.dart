import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData themeEnglish = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: AppColor.black),
    displayMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: AppColor.black),
    bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 15.0,),
    displaySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: AppColor.black),
  ),
  primaryColor: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: AppColor.black),
    displayMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: AppColor.black),
    bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 15.0,),
    displaySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: AppColor.black),
  ),
  primaryColor: Colors.blue,
);