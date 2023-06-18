import 'package:get/get.dart';

import 'package:storefull/core/class/crud.dart';
import '../controller/auth/signup_controller.dart';

class InitialBindings extends Bindings {

  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
  }

}