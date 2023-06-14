import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
}

class CheckEmailControllerImp extends CheckEmailController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  checkemail() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      Get.offNamed(AppRoute.signUpVerifyCode);
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