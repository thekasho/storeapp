import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/home_controller.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 15.0),
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
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 5.0),
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
          )
        ],
      ),
    );
  }
}
