import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefull/data/model/items_model.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/colors.dart';
import '../../../linkapi.dart';


class HomeItemsList extends GetView<HomeControllerImp> {
  const HomeItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Items(itemsModel: ItemsModel.fromJson(controller.items[i])),
      ),
    );
  }
}

class Items extends StatelessWidget {

  final ItemsModel itemsModel;

  const Items({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20.0, vertical: 10.0),
          margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 10.0),
          child: CachedNetworkImage(
              height: 100.0,
              width: 150.0,
              fit: BoxFit.fill, imageUrl: "${AppLink.items_images}/${itemsModel.itemImage}",),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: AppColor.black.withOpacity(0.3),
          ),
          height: 120.0,
          width: 200.0,
        ),
        Positioned(
          left: 10.0,
          child: Text(
            "${itemsModel.itemName}",
            style: const TextStyle(
                color: Colors.white, fontSize: 17.0),
          ),
        ),
      ],
    );
  }
}

