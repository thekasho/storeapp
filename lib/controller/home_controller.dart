import 'package:get/get.dart';
import 'package:storefull/core/services/services.dart';
import 'package:storefull/data/datasource/remote/homedata.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingdatacontroller.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
}

class HomeControllerImp extends HomeController {
  
  MyServices myServices = Get.find();

  HomeData homeData = HomeData(Get.find());

  List categories = [];

  String? username;
  String? id;

  late StatusRequest statusRequest;

  @override
  initialData() {
    id = myServices.sharedPreferences.getString("id");
    username = myServices.sharedPreferences.getString("username");
  }

  @override
  getData() async {

    statusRequest = StatusRequest.loading;
    update();

    var response = await homeData.getData();
    print(response);

    statusRequest = handlingData(response);

    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        categories.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}