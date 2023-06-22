import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/core/constant/colors.dart';

import '../../controller/homescreen_controller.dart';
import '../widget/home/customappbarbutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenComtrollerImp());
    return GetBuilder<HomeScreenComtrollerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.shopping_basket),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: Row(
            children: [
              Row(
                children: [
                  CustomAppBarButton(
                    onPressed: () => controller.changePage(0), buttonTitle: 'Home', buttonIcon: Icons.home,
                    active: controller.currentPage == 0 ? true : false,
                  ),
                  CustomAppBarButton(
                    onPressed: () => controller.changePage(1), buttonTitle: 'Settings', buttonIcon: Icons.settings,
                    active: controller.currentPage == 1 ? true : false,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  CustomAppBarButton(
                    onPressed: () => controller.changePage(2), buttonTitle: 'Profile', buttonIcon: Icons.account_circle_outlined,
                    active: controller.currentPage == 2 ? true : false,
                  ),
                  CustomAppBarButton(
                    onPressed: () => controller.changePage(3), buttonTitle: 'Favourite', buttonIcon: Icons.favorite,
                    active: controller.currentPage == 3 ? true : false,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: controller.pagesList.elementAt(controller.currentPage),
      ),
    );
  }
}
