import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/theme/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;

  const CustomSearchBar({super.key, this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      decoration: InputDecoration(
        hint: Text(
          hintText ?? "",
          style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 16),
        ),
        filled: true,
        fillColor: AppColors.beige,
        contentPadding: EdgeInsets.symmetric(horizontal: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
