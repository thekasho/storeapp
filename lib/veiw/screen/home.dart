import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/home_controller.dart';
import 'package:storefull/core/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30.0,
                          color: Colors.grey[600],
                        ),
                        hintText: "Find Product..",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[200],
                    ),
                    width: 60.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        size: 30.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(vertical: 15.0),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: AppColor.primaryColor,
                    ),
                    child: const ListTile(
                      title: Text(
                        "A summer surprise..",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      subtitle: Text(
                        "Cashback 20%",
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20.0,
                    right: -20.0,
                    child: Container(
                      height: 160,
                      width: 160.0,
                      decoration: BoxDecoration(
                        color: AppColor.secondaryColor,
                        borderRadius: BorderRadius.circular(160.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // child: ListView.builder(itemBuilder: itemBuilder),
            ),
          ],
        ),
      ),
    );
  }
}
