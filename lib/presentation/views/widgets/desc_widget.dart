import 'package:flutter/material.dart';

class DescWidget extends StatelessWidget {
  final String desc;

  const DescWidget({super.key, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(desc, style: Theme.of(context).textTheme.titleSmall),
        Divider(),
      ],
    );
  }
}
