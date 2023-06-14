import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/colors.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "Alert",
    middleText: "Confirm Exit App?",
    actions: [
      MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: const Text('Confirm'),
        onPressed: () {
          exit(0);
        },
      ),
      ElevatedButton(
        child: const Text('Cancel'),
        onPressed: () {
          Get.back();
        },
      ),
    ],
  );
  return Future.value(true);
}
