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
    update();

    var response = await testData.getData();

    statusRequest = handlingData(response);

    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }

}