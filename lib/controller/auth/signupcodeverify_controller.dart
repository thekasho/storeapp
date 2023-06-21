import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroller.dart';
import '../../data/datasource/remote/auth/verifycodesignup.dart';

abstract class SignUpVerifyCodeController extends GetxController {
  goToSuccessSignUp();
}

class SignUpVerifyCodeControllerImp extends SignUpVerifyCodeController {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());

  late String verifyCode;
  String? email;

  StatusRequest? statusRequest;

  @override
  goToSuccessSignUp() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await verifyCodeSignUpData.postdata(
      email!,
      verifyCode,
    );

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "Phone or Email Already Exsist");
        statusRequest = StatusRequest.failure;
      }
    }
    update();

    print(response);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
