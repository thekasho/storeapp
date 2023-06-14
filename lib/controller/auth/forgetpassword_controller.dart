import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  checkemail() {
    var formdata = formstate.currentState;
    Get.offNamed(AppRoute.verifyCode);
    if(formdata!.validate()){
      print("valid");
    }
    else {
      print("invalid input");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

}