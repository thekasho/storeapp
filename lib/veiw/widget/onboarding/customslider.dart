import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/colors.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(height: 30),
          Image.asset(
            onBoardingList[i].image!,
            // width: 200,
            height: Get.width / 1.3,
            // fit: BoxFit.fill,
          ),
          const SizedBox(height: 50),
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: AppColor.black),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
