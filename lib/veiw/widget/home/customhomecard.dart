import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/home_controller.dart';

import '../../../core/constant/colors.dart';

class CustomHomeCard extends GetView<HomeControllerImp> {

  final String cardtitle;
  final String cardbody;

  const CustomHomeCard({
    super.key, required this.cardtitle, required this.cardbody,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(vertical: 15.0),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: AppColor.primaryColor,
            ),
            child: ListTile(
              title: Text(
                cardtitle,
                style:
                const TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              subtitle: Text(
                cardbody,
                style:
                const TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Positioned(
            top: -20.0,
            right: controller.lang == "en" ? -20.0 : null,
            left: controller.lang == "ar" ? -20.0 : null,
            child: Container(
              height: 160,
              width: 160.0,
              decoration: BoxDecoration(
                color: AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(160.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
