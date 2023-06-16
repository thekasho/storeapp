import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../core/functions/alertexitaopp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextsignup.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/logoauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("7".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Form(
          key: controller.formstate,
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: [
              const LogoAuth(),
              CustomTextTitleAuth(text: "2".tr),
              CustomTextBodyAuth(text: "8".tr),
              const SizedBox(height: 30),
              CustomTextFormAuth(
                hinttext: "5".tr,
                labeltext: "3".tr,
                iconData: Icons.email_outlined,
                mycontroller: controller.email,
                valid: (val) {
                  return validInput(val!, 5, 100, "email");
                },
              ),
              GetBuilder<LoginControllerImp>(
                builder: (controller) => CustomTextFormAuth(
                  hinttext: "6".tr,
                  labeltext: "4".tr,
                  iconData: Icons.lock_outline,
                  mycontroller: controller.password,
                  isPassword: controller.isShowPassword,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                  valid: (val) {
                    return validInput(val!, 5, 30, "password");
                  },
                ),
              ),
              InkWell(
                onTap: () => controller.goToForgetPassword(),
                child: Text("9".tr, textAlign: TextAlign.end),
              ),
              CustomButtonAuth(
                  text: "7".tr, onPressed: () => controller.login()),
              const SizedBox(height: 30),
              CustomTextSign(
                textone: "10".tr,
                texttwo: " ${"11".tr}",
                onTap: () => controller.goToSignUp(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
