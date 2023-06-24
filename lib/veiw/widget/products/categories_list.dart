import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:storefull/controller/products_controller.dart';
import 'package:storefull/core/constant/colors.dart';
import 'package:storefull/core/functions/remote_translate.dart';
import 'package:storefull/data/model/categories_model.dart';

class ProductCategoryList extends GetView<ProductsControllerImp> {

  const ProductCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      height: 50.0,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
        const SizedBox(width: 10.0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(i: index,
              categoriesModel: CategoriesModel.fromJson(
                  controller.categories[index]));
        },
      ),
    );
  }
}

class Categories extends GetView<ProductsControllerImp> {

  final CategoriesModel categoriesModel;
  final int i;

  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToProducts(controller.categories, i);
        controller.changeCat(i, categoriesModel.categoryId!);
      },
      child: Column(
        children: [
          GetBuilder<ProductsControllerImp>(builder: (logic) {
            return Container(
              padding: const EdgeInsets.only(
                  bottom: 3.0, left: 10.0, right: 10.0),
              decoration: controller.selectedCat == i
                  ?
              const BoxDecoration(border: Border(
                  bottom: BorderSide(width: 2.0, color: AppColor.primaryColor)))
                  :
              null,
              child: Text(
                "${networkTranslate(categoriesModel.categoryNameAr, categoriesModel.categoryName)}",
                style: const TextStyle(
                    fontSize: 20.0, color: AppColor.darkGrey),
              ),
            );
          }),
        ],
      ),
    );
  }
}
