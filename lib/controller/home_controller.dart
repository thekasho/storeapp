import 'package:get/get.dart';
import 'package:storefull/core/constant/routesnames.dart';
import 'package:storefull/core/services/services.dart';
import 'package:storefull/data/datasource/remote/homedata.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingdatacontroller.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
  goToProducts(List categories, int selectedCat);
}

class HomeControllerImp extends HomeController {
  
  MyServices myServices = Get.find();

  HomeData homeData = HomeData(Get.find());

  List categories = [];
  List items = [];

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
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }

  @override
  goToProducts(categories, selectedCat) {
    Get.toNamed(AppRoute.products, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
    });
  }
}