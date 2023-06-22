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
                    onPressed: () {
                      controller.changePage(0);
                    },
                    buttonTitle: 'Home',
                    buttonIcon: Icons.home,
                    selectedButtonIconColor: AppColor.black, selectedTitleIconColor: AppColor.black,
                  ),
                  MaterialButton(
                    onPressed: () {
                      controller.changePage(1);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.home),
                        Text("Settings"),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      controller.changePage(2);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.home),
                        Text("Profile"),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      controller.changePage(3);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.home),
                        Text("Favourite"),
                      ],
                    ),
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
