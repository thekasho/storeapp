import 'package:get/get.dart';
import 'package:storefull/data/datasource/remote/productsdata.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingdatacontroller.dart';

abstract class ProductsController extends GetxController {
  initialData();
  changeCat(int val);
  getAllProducts(String catid);
}

class ProductsControllerImp extends ProductsController {

  ProductsData productsData = ProductsData(Get.find());

  late StatusRequest statusRequest;

  List categories = [];
  List products = [];
  int? selectedCat;
  String? catid;

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
    getAllProducts(catid!);
  }

  @override
  changeCat(val) {
    selectedCat = val;
    print(selectedCat);
    update();
  }

  @override
  getAllProducts(catid) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await productsData.getData(catid);
    print(response);

    statusRequest = handlingData(response);

    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        products.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

}