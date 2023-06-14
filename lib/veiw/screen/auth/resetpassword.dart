import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/resetpasswordcontroller.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("22".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          CustomTextTitleAuth(text: "23".tr),
          CustomTextBodyAuth(text: "24".tr,),
          const SizedBox(height: 30),
          CustomTextFormAuth(
            hinttext: "25".tr,
            labeltext: "26".tr,
            iconData: Icons.lock_outline,
            mycontroller: controller.password,
          ),
          CustomTextFormAuth(
            hinttext: "27".tr,
            labeltext: "27".tr,
            iconData: Icons.lock_outline,
            mycontroller: controller.repassword,
          ),
          CustomButtonAuth(text: "Update Password", onPressed: () {
            controller.goToSuccessResetPassword();
          }),
        ],
      ),
    );
  }
}
