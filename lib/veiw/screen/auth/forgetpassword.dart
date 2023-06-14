import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/forgetpasswordcontroller.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
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
      body: Container(
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
            ),
            CustomButtonAuth(text: "19".tr, onPressed: () {
              controller.goToVerifyCode();
            }),
          ],
        ),
      ),
    );
  }
}
