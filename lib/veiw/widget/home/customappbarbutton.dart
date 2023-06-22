import 'package:flutter/material.dart';

class CustomAppBarButton extends StatelessWidget {
  final void Function() onPressed;
  final String buttonTitle;
  final IconData buttonIcon;
  final Color selectedButtonIconColor;
  final Color selectedTitleIconColor;

  const CustomAppBarButton({
    super.key,
    required this.onPressed,
    required this.buttonTitle,
    required this.buttonIcon,
    required this.selectedButtonIconColor,
    required this.selectedTitleIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            buttonIcon,
            color: selectedButtonIconColor,
          ),
          Text(
            buttonTitle,
            style: TextStyle(color: selectedTitleIconColor),
          ),
        ],
      ),
    );
  }
}
