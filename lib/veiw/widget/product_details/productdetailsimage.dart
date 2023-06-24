import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/productdetails_controller.dart';
import '../../../core/constant/colors.dart';
import '../../../linkapi.dart';

class ProductDetailsTopImage extends GetView<ProductDetailsControllerImp> {
  const ProductDetailsTopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
