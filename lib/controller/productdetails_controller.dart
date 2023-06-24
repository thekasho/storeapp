import 'package:get/get.dart';
import 'package:storefull/data/model/items_model.dart';

abstract class ProductDetailsController extends GetxController {

}

class ProductDetailsControllerImp extends ProductDetailsController {

  late ItemsModel itemsModel;

  initData() {
    itemsModel = Get.arguments['itemmodel'];
  }

  List productColorsList =[
    {"name": "Red", "id": 1, "active": 0},
    {"name": "Black", "id": 2, "active": 1},
    {"name": "Blue", "id": 3, "active": 0},
  ];

  @override
  void onInit() {
    initData();
    super.onInit();
  }

}