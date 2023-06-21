import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../data/datasource/remote/auth/verifycodesignup.dart';

abstract class SignUpVerifyCodeController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verifyCode);
}

class SignUpVerifyCodeControllerImp extends SignUpVerifyCodeController {

  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());

  late String verifyCode;
  String? email;

  StatusRequest? statusRequest;

  @override
  goToSuccessSignUp(verifyCode) async {

    statusRequest = StatusRequest.loading;
    update();

    var response = await verifyCodeSignUpData.postdata(
      email!,
      verifyCode,
    );

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "Verification Code Incorrect!!");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  checkCode() {

  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
