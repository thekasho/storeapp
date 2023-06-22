import 'package:flutter/material.dart';

import '../widget/customappbar.dart';
import '../widget/products/categories_list.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const productCategoryList(),
          ],
        ),
      ),
    );
  }
}
