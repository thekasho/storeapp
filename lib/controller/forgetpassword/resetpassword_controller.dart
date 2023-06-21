import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/data/datasource/remote/forgetpassword/resetpassword.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {

  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;
  String? email;

  StatusRequest? statusRequest;

  @override
  resetpassword() async {
    if(password.text != repassword.text){
      Get.defaultDialog(
          title: "Warning", middleText: "The confirm Password and Password must be the same!!");
      statusRequest = StatusRequest.failure;
    }
    else {
      if (formstate.currentState!.validate()) {
        statusRequest = StatusRequest.loading;
        update();

        var response = await resetPasswordData.postdata(
            email!,
            password.text
        );
        print(response);
        statusRequest = handlingData(response);

        if (StatusRequest.success == statusRequest) {
          if (response['status'] == "success") {
            Get.toNamed(AppRoute.successResetPassword);
          } else {
            Get.defaultDialog(
                title: "Warning", middleText: "Verification Code Incorrect!!");
            statusRequest = StatusRequest.failure;
          }
        }
        update();
      }
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

}