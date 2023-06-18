import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/data/datasource/remote/auth/signup.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';

abstract class SignUpController extends GetxController {
  goToLogin();
  signup();
}

class SignUpControllerImp extends SignUpController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;

  late StatusRequest statusRequest;

  SignUpData signUpData = SignUpData(Get.find());
  List data = [];

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  signup() async {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      statusRequest = StatusRequest.loading;
      var response = await signUpData.postdata(
        username.text,
        password.text,
        email.text,
        phone.text
      );

      statusRequest = handlingData(response);

      if(StatusRequest.success == statusRequest){
        if(response['status'] == "success"){
          data.addAll(response['data']);
          Get.offNamed(AppRoute.signUpVerifyCode);
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Phone or Email Already Exsist");
          statusRequest = StatusRequest.failure;
        }
      }

      update();

      // Get.delete<SignUpControllerImp>();
      print("valid");
    }
    else {
      print("invalid input");
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

}