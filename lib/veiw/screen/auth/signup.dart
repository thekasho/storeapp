import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/functions/alertexitaopp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextsignup.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("11".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Form(
              key: controller.formstate,
              child: ListView(
                padding: const EdgeInsets.all(15.0),
                children: [
                  CustomTextTitleAuth(text: "2".tr),
                  CustomTextBodyAuth(text: "12".tr),
                  const SizedBox(height: 30),
                  CustomTextFormAuth(
                    hinttext: "14".tr,
                    labeltext: "15".tr,
                    iconData: Icons.person_outline,
                    mycontroller: controller.username,
                    valid: (val) {
                      return validInput(val!, 5, 100, "username");
                    },
                  ),
                  CustomTextFormAuth(
                    isNumber: true,
                    hinttext: "16".tr,
                    labeltext: "17".tr,
                    iconData: Icons.phone,
                    mycontroller: controller.phone,
                    valid: (val) {
                      return validInput(val!, 5, 100, "phone");
                    },
                  ),
                  CustomTextFormAuth(
                    hinttext: "5".tr,
                    labeltext: "3".tr,
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email,
                    valid: (val) {
                      return validInput(val!, 5, 100, "email");
                    },
                  ),
                  CustomTextFormAuth(
                    hinttext: "6".tr,
                    labeltext: "4".tr,
                    iconData: Icons.lock_outline,
                    mycontroller: controller.password,
                    isPassword: true,
                    valid: (val) {
                      return validInput(val!, 5, 100, "password");
                    },
                  ),
                  CustomButtonAuth(
                      text: "11".tr, onPressed: () => controller.signup()),
                  const SizedBox(height: 30),
                  CustomTextSign(
                    textone: "13".tr,
                    texttwo: "7".tr,
                    onTap: () => controller.goToLogin(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
