import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/productdetails_controller.dart';

import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/core/functions/remote_translate.dart';

import '../widget/product_details/priceandqty.dart';
import '../widget/product_details/productcolorslist.dart';
import '../widget/product_details/productdetailsimage.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10.0),
        height: 40.0,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: () {},
          color: AppColor.secondaryColor,
          child: const Text(
            "Add to Cart",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          const ProductDetailsTopImage(),
          const SizedBox(height: 100.0),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${controller.itemsModel.itemName}",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: AppColor.black),
                ),
                const SizedBox(height: 10.0),
                PriceAndQty(
                    onAdd: () {}, onRemove: () {}, count: '2', price: '20.0'),
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
                const ProductColorsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
