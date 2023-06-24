import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/products_controller.dart';
import 'package:storefull/core/functions/remote_translate.dart';
import 'package:storefull/data/model/items_model.dart';

import '../../../core/constant/colors.dart';
import '../../../linkapi.dart';

class CustomProductsList extends GetView<ProductsControllerImp> {
  final ItemsModel itemsModel;

  const CustomProductsList({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.goToProductDetailPage(itemsModel),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: "${itemsModel.itemId}",
                child: CachedNetworkImage(
                  imageUrl: "${AppLink.items_images}/${itemsModel.itemImage}",
                  height: 120.0,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "${networkTranslate(itemsModel.itemNameAr, itemsModel.itemName)}",
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Rating 3.5",
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                size: 15.0,
                                color: AppColor.primaryColor,
                              )),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${itemsModel.itemPrice} \$",
                    style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite,
                          color: AppColor.primaryColor)),
                  // IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline_rounded),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
