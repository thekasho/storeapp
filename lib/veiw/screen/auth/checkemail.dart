import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../../controller/auth/checkemail_controller.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Check Email",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        child: Form(
          key: controller.formstate,
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: [
              CustomTextTitleAuth(text: "Verify Your Email"),
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
                  return validInput(val!, 5, 100, "email");
                },
              ),
              CustomButtonAuth(text: "19".tr, onPressed: () {
                controller.checkemail();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
