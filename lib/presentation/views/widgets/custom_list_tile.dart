import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget trailing;
  final VoidCallback? onTap;

  const CustomListTile({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      title: Text(title, style: context.theme.textTheme.titleMedium),
      leading: leading,
      trailing: trailing,
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
    );
  }
}
