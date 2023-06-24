import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class PriceAndQty extends StatelessWidget {
  final void Function() onAdd;
  final void Function() onRemove;
  final String count;
  final String price;

  const PriceAndQty({
    super.key,
    required this.onAdd,
    required this.onRemove,
    required this.count,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onAdd,
              icon: const Icon(Icons.add),
            ),
            Container(
              alignment: Alignment.center,
              width: 50.0,
              height: 40.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                count,
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            IconButton(
              onPressed: onRemove,
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
        const Spacer(),
        Text(
          "$price\$",
          style: const TextStyle(color: AppColor.primaryColor, fontSize: 25.0),
        ),
      ],
    );
  }
}
