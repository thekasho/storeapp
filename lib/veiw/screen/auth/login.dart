import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/colors.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/logoauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Sign In",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            LogoAuth(),
            CustomTextTitleAuth(text: "2".tr),
            const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media",
            ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
              hinttext: "5".tr,
              labeltext: "3".tr,
              iconData: Icons.email_outlined,
            ),
            CustomTextFormAuth(
              hinttext: "6".tr,
              labeltext: "4".tr,
              iconData: Icons.lock_outline,
            ),
            const Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
            CustomButtonAuth(text: 'Sign In', onPressed: () {}),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don`t have an account?"),
                InkWell(
                  child: Text(
                    " Sign Up",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
