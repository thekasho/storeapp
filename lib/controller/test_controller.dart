import 'package:get/get.dart';

import 'package:storefull/core/class/statusrequest.dart';
import 'package:storefull/data/datasource/remote/test_data.dart';
import '../core/functions/handlingdatacontroller.dart';

class TestController extends GetxController {

  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print(response);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }

}