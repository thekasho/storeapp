import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routesnames.dart';
import '../../core/localization/changelocal.dart';
import '../widget/language/custombuttonlang.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.displayLarge,),
            const SizedBox(height: 10.0),
            CustomButtonLang(
              textbutton: 'Ar',
              onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(AppRoute.onboarding);
              },
            ),
            const SizedBox(height: 10.0),
            CustomButtonLang(
              textbutton: 'En',
              onPressed: () {
                controller.changeLang("en");
                Get.offNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
