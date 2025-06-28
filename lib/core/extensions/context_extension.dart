import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get topPadding => MediaQuery.of(this).padding.top;
  ThemeData get theme => Theme.of(this);
}
