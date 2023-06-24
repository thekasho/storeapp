import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/productdetails_controller.dart';

import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/linkapi.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());

    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
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
                      imageUrl: AppLink.items_images + "/" + controller.itemsModel.itemImage!,
                      height: 250,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
