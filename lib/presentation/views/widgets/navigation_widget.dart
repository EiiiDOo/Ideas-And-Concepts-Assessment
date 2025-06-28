import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_icon.dart';

class NavigationWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onTap;

  const NavigationWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(
      title,
      style: context.theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Text(subTitle, style: context.theme.textTheme.titleSmall),
    trailing: const CustomIcon(iconData: Icons.keyboard_arrow_right),
    contentPadding: EdgeInsets.all(0),
    onTap: onTap,
  );
}
