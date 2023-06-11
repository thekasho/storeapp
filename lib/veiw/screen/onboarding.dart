import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/onboarding_controller.dart';
import '../../core/constant/colors.dart';
import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/customslider.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(OnBoardingControllerImp());

    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: CustomSliderOnBoardin(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(flex: 2),
                  CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
