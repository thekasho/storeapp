import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/home_controller.dart';
import 'package:storefull/core/class/handlingdataview.dart';
import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/linkapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          subtitle: Text(
                            "Cashback 20%",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
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
                SizedBox(
                  height: 100.0,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10.0),
                    itemCount: controller.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.thirdColor,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 10.0),
                            height: 70.0,
                            width: 70.0,
                            child: SvgPicture.network(
                              "${AppLink.categories_images}/${controller.categories[index]['category_image']}",
                              color: AppColor.secondaryColor,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "${controller.categories[index]['category_name']}",
                            style: const TextStyle(fontSize: 13.0),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Product For You.",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => Stack(
                      children: [
                        Container(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          margin: const EdgeInsetsDirectional.symmetric(
                              horizontal: 10.0),
                          child: Image.asset("assets/images/2.png",
                              height: 100.0, width: 150.0, fit: BoxFit.fill),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: AppColor.black.withOpacity(0.3),
                          ),
                          height: 120.0,
                          width: 200.0,
                        ),
                        Positioned(
                          left: 10.0,
                          child: Text(
                            "Labtop Surface Go 2",
                            style: TextStyle(color: Colors.white, fontSize: 17.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
