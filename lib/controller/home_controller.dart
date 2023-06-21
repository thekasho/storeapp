import 'package:get/get.dart';
import 'package:storefull/core/services/services.dart';

class HomeController extends GetxController {

}

class HomeControllerImp extends HomeController {
  
  MyServices myServices = Get.find();

  String? username;
  String? id;


  initialData() {
    id = myServices.sharedPreferences.getString("id");
    username = myServices.sharedPreferences.getString("username");
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}