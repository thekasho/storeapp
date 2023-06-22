import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/homescreen_controller.dart';
import 'customappbarbutton.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenComtrollerImp>(builder: (controller) => BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: Row(
        children: [
          ...List.generate(
            controller.pagesList.length + 1,
                (index) {
              int i = index > 2 ? index - 1 : index;
              return index == 2 ? const Spacer() :
              CustomAppBarButton(
                  buttonTitle: controller.pagesTitles[i], buttonIcon: Icons.home,
                  active: controller.currentPage == i ? true : false,
                  onPressed: () => controller.changePage(i)
              );
            },
          ),
        ],
      ),
    ));
  }
}
