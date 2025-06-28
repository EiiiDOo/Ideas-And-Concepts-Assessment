import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/localization/translations_keys.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/custom_app_bar.dart';

import '../widgets/help_faq_screen.dart';

class HelpAndFaqPage extends StatelessWidget {
  const HelpAndFaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    // print(Get.arguments[AppConstants.faq]);
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: TranslationKeys.helpAndFaqs.tr,
        desc: TranslationKeys.howCanWeHelpYou.tr,
      ),
      body: HelpAndFaqScreen(),
    );
  }
}
