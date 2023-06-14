import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;

  const CustomTextFormAuth({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(
            fontSize: 14.0,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          label: Container(
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 7.0),
              child: Text(labeltext)),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
