import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/data/datasource/remote/forgetpassword/verifycode.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword(String verifyCode);
}

class VerifyCodeControllerImp extends VerifyCodeController {

  VerifyCodeResetPasswordData verifyCodeResetPasswordData = VerifyCodeResetPasswordData(Get.find());

  late String verifyCode;
  String? email;

  StatusRequest? statusRequest;

  @override
  goToResetPassword(verifyCode) async {

    statusRequest = StatusRequest.loading;
    update();

    var response = await verifyCodeResetPasswordData.postdata(
      email!,
      verifyCode,
    );

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "Verification Code Incorrect!!");
        statusRequest = StatusRequest.failure;
      }
    }
    update();

  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

}