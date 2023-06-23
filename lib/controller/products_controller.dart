import 'package:get/get.dart';

abstract class ProductsController extends GetxController {
  initialData();
  changeCat(val);
}

class ProductsControllerImp extends ProductsController {

  List categories = [];
  int? selectedCat;

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
  }

  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }

}