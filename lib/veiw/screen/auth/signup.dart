import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextsignup.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            CustomTextTitleAuth(text: "2".tr),
            CustomTextBodyAuth(
              text: "12".tr,
            ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
              hinttext: "14".tr,
              labeltext: "15".tr,
              iconData: Icons.person_outline,
              mycontroller: controller.username,
            ),
            CustomTextFormAuth(
              hinttext: "16".tr,
              labeltext: "17".tr,
              iconData: Icons.phone,
              mycontroller: controller.phone,
            ),
            CustomTextFormAuth(
              hinttext: "5".tr,
              labeltext: "3".tr,
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            CustomTextFormAuth(
              hinttext: "6".tr,
              labeltext: "4".tr,
              iconData: Icons.lock_outline,
              mycontroller: controller.password,
            ),
            CustomButtonAuth(text: "11".tr, onPressed: () => controller.signup() ),
            const SizedBox(height: 30),
            CustomTextSign(
              textone: "13".tr,
              texttwo: "7".tr,
              onTap: () => controller.goToLogIn(),
            ),
          ],
        ),
      ),
    );
  }
}
