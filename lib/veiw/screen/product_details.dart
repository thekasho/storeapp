import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/productdetails_controller.dart';

import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/core/functions/remote_translate.dart';
import 'package:storefull/linkapi.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10.0),
        height: 40.0,
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: () {},
          color: AppColor.secondaryColor,
          child: Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
        ),
      ),
      body: Container(
          child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20.0)),
                ),
              ),
              Positioned(
                top: 50.0,
                right: Get.width / 8,
                left: Get.width / 8,
                child: Center(
                  child: Hero(
                    tag: "${controller.itemsModel.itemId}",
                    child: CachedNetworkImage(
                      imageUrl:
                          "${AppLink.items_images}/${controller.itemsModel.itemImage!}",
                      height: 250,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100.0),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${controller.itemsModel.itemName}",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: AppColor.black)),
                const SizedBox(height: 10.0),
                Text(
                    "${networkTranslate(controller.itemsModel.itemDescAr, controller.itemsModel.itemDesc)} "
                    "${networkTranslate(controller.itemsModel.itemDescAr, controller.itemsModel.itemDesc)} "
                    "${networkTranslate(controller.itemsModel.itemDescAr, controller.itemsModel.itemDesc)} "
                    "${networkTranslate(controller.itemsModel.itemDescAr, controller.itemsModel.itemDesc)} "
                    "${networkTranslate(controller.itemsModel.itemDescAr, controller.itemsModel.itemDesc)} ",
                    style: const TextStyle(fontSize: 15.0, color: Colors.grey)),
                const SizedBox(height: 10.0),
                Text("Color",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.grey)),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.darkBlue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        "Red",
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.darkBlue),
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppColor.darkBlue,
                      ),
                      child: const Text(
                        "Black",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.darkBlue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        "Blue",
                        style: TextStyle(
                            color: AppColor.darkBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
