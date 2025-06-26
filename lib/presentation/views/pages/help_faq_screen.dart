import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/localization/translations_keys.dart';

class HelpAndFaqScreen extends StatelessWidget {
  const HelpAndFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslationKeys.helpAndFaqs.tr),
      ),
    );
  }
}
