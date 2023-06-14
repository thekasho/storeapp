import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/successsignup_controller.dart';
import '../../widget/auth/custombuttonauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Success Sign Up",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200.0,
                color: AppColor.primaryColor,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Sign Up Completed Successfully, You can continue to Login Page",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Container(width: double.infinity, child: CustomButtonAuth(text: "Continue to Login", onPressed: () {
              controller.goToLoginPage();
            })),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
