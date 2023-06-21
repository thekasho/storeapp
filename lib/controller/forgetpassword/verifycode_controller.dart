import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/data/datasource/remote/forgetpassword/verifycode.dart';

import '../../core/class/statusrequest.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {

  VerifyCodeResetPasswordData verifyCodeResetPasswordData = VerifyCodeResetPasswordData(Get.find());

  late String verifyCode;
  String? email;

  StatusRequest? statusRequest;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

}