import 'package:flutter/material.dart';

AppBar customAppBar({
  required BuildContext context,
  required String title,
  required String desc,
}) {
  return AppBar(
    title: Text(title, style: Theme.of(context).textTheme.titleLarge),
    backgroundColor: Colors.transparent,
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          spacing: 15,
          children: [
            Text(
              desc,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(),
          ],
        ),
      ),
    ),
  );
}
