import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/productdetails_controller.dart';
import '../../../core/constant/colors.dart';

class ProductColorsList extends GetView<ProductDetailsControllerImp> {
  const ProductColorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(controller.productColorsList.length, (index) => Container(
          margin: const EdgeInsets.only(right: 10.0),
          alignment: Alignment.center,
          height: 60.0,
          width: 90.0,
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.darkBlue),
              borderRadius: BorderRadius.circular(10.0),
              color: controller.productColorsList[index]["active"] == 1 ? AppColor.darkBlue : null
          ),
          child: Text(
            "${controller.productColorsList[index]["name"]}",
            style: TextStyle(
              color: controller.productColorsList[index]["active"] == 1 ? Colors.white : AppColor.darkBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ),
      ],
    );
  }
}
