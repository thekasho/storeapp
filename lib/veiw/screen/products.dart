import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/products_controller.dart';
import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/linkapi.dart';

import '../widget/customappbar.dart';
import '../widget/products/categories_list.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductsControllerImp controller = Get.put(ProductsControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            CustomAppBar(
              titleAppBar: "Find Product..",
              onPressedNotify: () {},
              onPressedSearch: () {},
            ),
            const ProductCategoryList(),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7),
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl: "${AppLink.items_images}/labtop.png",
                          ),
                          const Text(
                            "Labtop Surface Go 2",
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Description Description Description Description",
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "200.10 \$",
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, color: AppColor.primaryColor)),
                              // IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline_rounded),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
