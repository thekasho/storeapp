import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:storefull/core/class/statusrequest.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/signupcodeverify_controller.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SignUpVerifyCode extends StatelessWidget {
  const SignUpVerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpVerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("9".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<SignUpVerifyCodeControllerImp>(builder: (controller) => controller.statusRequest == StatusRequest.loading ?
      const Center(child: Text('Loading..'),)
          : Container(
        child: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            CustomTextTitleAuth(text: "20".tr),
            CustomTextBodyAuth(
              text: "21".tr,
            ),
            const SizedBox(height: 30),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(10.0),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {

              },
              onSubmit: (String verificationCode) {
                controller.goToSuccessSignUp(verificationCode);
              }, // end onSubmit
            ),
          ],
        ),
      ),)
    );
  }
}
