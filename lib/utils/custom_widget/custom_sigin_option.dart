import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSiginOption extends StatelessWidget {
  const CustomSiginOption(
      {super.key, required this.icons, required this.color});
  final IconData icons;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent),
        width: 74,
        height: 50,
        child: Center(
          child: FaIcon(
            icons,
            color: color,
          ),
        ));
  }
}
