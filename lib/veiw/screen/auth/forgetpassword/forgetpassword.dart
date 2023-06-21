import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/core/class/handlingdataview.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../../controller/forgetpassword/forgetpassword_controller.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
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
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Form(
            key: controller.formstate,
            child: ListView(
              padding: const EdgeInsets.all(15.0),
              children: [
                CustomTextTitleAuth(text: "18".tr),
                CustomTextBodyAuth(
                  text: "8".tr,
                ),
                const SizedBox(height: 30),
                CustomTextFormAuth(
                  hinttext: "5".tr,
                  labeltext: "3".tr,
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email,
                  valid: (val) {
                    return validInput(val!, 5, 30, "email");
                  },
                ),
                CustomButtonAuth(
                  text: "19".tr,
                  onPressed: () {
                    controller.checkemail();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
