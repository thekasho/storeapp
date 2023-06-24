import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/home_controller.dart';
import 'package:storefull/core/class/handlingdataview.dart';

import '../widget/customappbar.dart';
import '../widget/home/customhomecard.dart';
import '../widget/home/homecategorylist.dart';
import '../widget/home/homecustomtitle.dart';
import '../widget/home/homeitemslist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              CustomAppBar(
                titleAppBar: "31".tr,
                onPressedNotify: () {},
                onPressedSearch: () {},
              ),
              CustomHomeCard(
                cardtitle: "32".tr,
                cardbody: "33".tr,
              ),
              HomeCustomTitle(
                title: "28".tr,
              ),
              const HomeCategoryList(),
              HomeCustomTitle(
                title: "29".tr,
              ),
              const HomeItemsList(),
              HomeCustomTitle(
                title: "30".tr,
              ),
              const HomeItemsList(),
            ],
          ),
        ),
      ),
    );
  }
}
