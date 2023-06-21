import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/data/datasource/remote/forgetpassword/checkemail.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {

  CheckEmailData checkEmailData = CheckEmailData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;

  StatusRequest? statusRequest;

  @override
  checkemail() async {
    var formdata = formstate.currentState;
    if(formdata!.validate()) {

      statusRequest = StatusRequest.loading;
      update();

      var response = await checkEmailData.postdata(
        email.text,
      );

      statusRequest = handlingData(response);

      if(StatusRequest.success == statusRequest){
        if(response['status'] == "success"){
          Get.offNamed(AppRoute.verifyCode, arguments: {"email": email.text} );
        }
      } else {
        Get.defaultDialog(title: "Warning", middleText: "Email Not Found!!");
        statusRequest = StatusRequest.failure;
      }
      update();

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