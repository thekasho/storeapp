import 'package:get/get.dart';

import '../../core/constant/routesnames.dart';

abstract class SuccessResetPasswordController extends GetxController {

  goToLoginPage ();

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoute.login);
  }

}