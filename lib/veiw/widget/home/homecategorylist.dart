import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:storefull/controller/home_controller.dart';
import 'package:storefull/data/model/categories_model.dart';

import '../../../core/constant/colors.dart';
import '../../../linkapi.dart';

class HomeCategoryList extends GetView<HomeControllerImp> {

  const HomeCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      height: 100.0,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
        const SizedBox(width: 10.0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(categoriesModel: CategoriesModel.fromJson(controller.categories[index]),);
        },
      ),
    );
  }
}

class Categories extends StatelessWidget {

  final CategoriesModel categoriesModel;

  const Categories({Key? key, required this.categoriesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            "${AppLink.categories_images}/${categoriesModel.categoryImage}",
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          "${categoriesModel.categoryName}",
          style: const TextStyle(fontSize: 13.0),
        ),
      ],
    );
  }
}
