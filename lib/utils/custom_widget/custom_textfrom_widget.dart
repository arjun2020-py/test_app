import 'package:flutter/material.dart';

class CustomTextformWidget extends StatelessWidget {
  CustomTextformWidget(
      {super.key, required this.hintText, this.controller, this.suffixIcon});
  final String hintText;
  TextEditingController? controller;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(18)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(18)),
            hintText: hintText),
      ),
    );
  }
}
