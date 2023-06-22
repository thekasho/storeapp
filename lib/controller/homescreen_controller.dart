import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/veiw/screen/home.dart';

abstract class HomeScreenComtroller extends GetxController {

  changePage(int i);

}

class HomeScreenComtrollerImp extends HomeScreenComtroller {

  int currentPage = 0;

  List<Widget> pagesList = [
    HomePage(),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [Center(child: Text("Settings"),)],),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [Center(child: Text("Profile"),)],),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [Center(child: Text("Favourite"),)],),
  ];

  List pagesTitles = [
    "Home",
    "Settings",
    "Profile",
    "Favourite",
  ];

  @override
  changePage(int i) {
    currentPage = i;
    update();
  }

}