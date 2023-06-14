import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

abstract class SignUpVerifyCodeController extends GetxController {
  goToSuccessSignUp();
}

class SignUpVerifyCodeControllerImp extends SignUpVerifyCodeController {

  late String verifyCode;

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }

}