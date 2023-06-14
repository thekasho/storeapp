import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

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

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  signup() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      Get.offNamed(AppRoute.signUpVerifyCode);
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