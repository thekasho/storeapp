import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/successresetpassword_controller.dart';
import '../../../../core/constant/colors.dart';
import '../../../widget/auth/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SuccessResetPasswordControllerImp controller = Get.put(SuccessResetPasswordControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Success Reset Password",
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
              "Reset Password Completed Successfully, You can continue to Login Page",
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
