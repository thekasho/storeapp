import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final String titleAppBar;
  final void Function() onPressedNotify;
  final void Function() onPressedSearch;

  const CustomAppBar({
    super.key, required this.titleAppBar, required this.onPressedNotify, required this.onPressedSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: onPressedSearch,
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.grey[600],
                  ),
                ),
                hintText: titleAppBar,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[200],
            ),
            width: 60.0,
            child: IconButton(
              onPressed: onPressedNotify,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30.0,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
