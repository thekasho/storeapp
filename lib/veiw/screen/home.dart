import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/home_controller.dart';
import 'package:storefull/core/class/handlingdataview.dart';

import '../widget/home/customappbar.dart';
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
                titleAppBar: "Find Product..",
                onPressedNotify: () {},
                onPressedSearch: () {},
              ),
              const CustomHomeCard(
                cardtitle: "A summer surprise..",
                cardbody: "Cashback 20%",
              ),
              const HomeCustomTitle(
                title: "Categories",
              ),
              const HomeCategoryList(),
              const HomeCustomTitle(
                title: "Product For You.",
              ),
              const HomeItemsList(),
              const HomeCustomTitle(
                title: "Offers..",
              ),
              const HomeItemsList(),
            ],
          ),
        ),
      ),
    );
  }
}
