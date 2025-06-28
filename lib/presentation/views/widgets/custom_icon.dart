import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIcon extends StatelessWidget {
  final Color? iconColor;
  final Color? color;
  final double size;
  final IconData iconData;

  const CustomIcon({
    super.key,
    this.iconColor = Colors.white,
    this.size = 30,
    required this.iconData,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: color ?? context.theme.primaryColor,
        borderRadius: BorderRadius.circular(size),
      ),
      width: size,
      height: size,
      alignment: Alignment.center,
      child: Icon(iconData, size: size - 10, color: iconColor),
    );
  }
}
