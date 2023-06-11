import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/onboarding_controller.dart';

import '../../../core/constant/colors.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50.0),
      height: 40.0,
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        textColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        child: const Text(
            "Continue"
        ),
      ),
    );
  }
}
