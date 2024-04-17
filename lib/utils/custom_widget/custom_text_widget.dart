import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  CustomTextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.fontSize,
      this.fontFamily,
      this.fontWeight,
    
      });
  final String text;
  final Color color;
  final double fontSize;
  String? fontFamily;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(
     
            fontFamily: fontFamily, color: color, fontSize: fontSize,fontWeight: fontWeight),
    );
  }
}
