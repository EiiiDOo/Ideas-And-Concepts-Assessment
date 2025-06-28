import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/localization/translations_keys.dart';
import 'package:ideas_and_concepts_assessment_task/core/constants/app_constants.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/choice_chip_tab.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/contact_us_tab.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/faq_tab.dart';

class HelpAndFaqScreen extends StatefulWidget {
  const HelpAndFaqScreen({super.key});

  @override
  State<HelpAndFaqScreen> createState() => _HelpAndFaqScreenState();
}

class _HelpAndFaqScreenState extends State<HelpAndFaqScreen> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = Get.arguments[AppConstants.faq] ?? false ? 0 : 1;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24),
      children: [
        ChoiceChipTab(
          tabViews: _tabViews,
          tabs: _tabs,
          selectedIndex: selectedIndex,
          onTabSelected: (value) => setState(() {
            selectedIndex = value;
          }),
        ),
      ],
    );
  }
}

final List<String> _tabs = [
  TranslationKeys.faq.tr,
  TranslationKeys.contactUs.tr,
];
final List<Widget> _tabViews = [FaqTab(), ContactUsTab()];
