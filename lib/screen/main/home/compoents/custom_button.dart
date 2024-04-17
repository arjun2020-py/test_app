import 'package:flutter/material.dart';

class CustomButtonClick extends StatelessWidget {
  const CustomButtonClick({super.key, required this.icons,required this.onPressed});
  final IconData icons;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icons,
      ),

      //color: Colors.transparent,
    );
  }
}
