import 'package:get/get.dart';

import '../../core/constant/routesnames.dart';

abstract class SuccessSignUpController extends GetxController {

  goToLoginPage ();

}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoute.login);
  }

}