import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {

  late String verifyCode;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

}