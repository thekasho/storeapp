import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {

  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  StatusRequest statusRequest = StatusRequest.none;

  bool isShowPassword = true;

  showPassword(){
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if(formdata!.validate()){

      statusRequest = StatusRequest.loading;
      update();

      var response = await loginData.postdata(
        email.text,
        password.text,
      );

      statusRequest = handlingData(response);

      if(StatusRequest.success == statusRequest){
        if(response['status'] == "success"){
          Get.offNamed(AppRoute.homePage);
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Email or Password Incorrect!!");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
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