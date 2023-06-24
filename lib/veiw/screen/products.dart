import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/products_controller.dart';
import 'package:storefull/core/class/handlingdataview.dart';
import 'package:storefull/data/model/items_model.dart';

import '../widget/customappbar.dart';
import '../widget/products/categories_list.dart';
import '../widget/products/customproductslist.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(ProductsControllerImp());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: GetBuilder<ProductsControllerImp>(
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView(
              children: [
                CustomAppBar(
                  titleAppBar: "Find Product..",
                  onPressedNotify: () {},
                  onPressedSearch: () {},
                ),
                const ProductCategoryList(),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.7),
                  itemBuilder: (BuildContext context, index) {
                    return CustomProductsList(
                      itemsModel: ItemsModel.fromJson(
                        controller.products[index],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
