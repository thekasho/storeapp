import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("valid");
    }
    else {
      print("invalid input");
    }
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

}