import 'package:get/get.dart';
import 'package:storefull/data/model/items_model.dart';

abstract class ProductDetailsController extends GetxController {

}

class ProductDetailsControllerImp extends ProductDetailsController {

  late ItemsModel itemsModel;

  initData() {
    itemsModel = Get.arguments['itemmodel'];
  }

  @override
  void onInit() {
    initData();
    super.onInit();
  }

}