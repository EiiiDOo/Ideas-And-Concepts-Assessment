
import 'package:flutter/material.dart';

class ContactEntity {
  final String title;
  final IconData icon;
  final String? appUrl;
  final String webUrl;

  ContactEntity({
    required this.title,
    required this.icon,
    this.appUrl,
    required this.webUrl,
  });
}
