import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/colors.dart';

import '../../controller/homescreen_controller.dart';
import '../widget/home/custombottomappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenComtrollerImp());
    return GetBuilder<HomeScreenComtrollerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.secondaryColor,
          onPressed: () {},
          child: const Icon(Icons.shopping_basket),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomAppBar(),
        body: controller.pagesList.elementAt(controller.currentPage),
      ),
    );
  }
}
