import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/localization/translations_keys.dart';
import 'package:ideas_and_concepts_assessment_task/config/routes/app_routes.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/custom_app_bar.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/desc_widget.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/navigation_widget.dart';

import '../../../core/constants/app_constants.dart';

class CustomerServiceScreen extends StatelessWidget {
  const CustomerServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: TranslationKeys.customerService.tr,
        desc: TranslationKeys.helloImHereToAssistYou.tr,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: [

          // small desc
          DescWidget(desc: TranslationKeys.loremIpsumDolorSitAmet.tr),
          ListView.separated(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            itemCount: _navigateOptions.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              final item = _navigateOptions[index];
              return NavigationWidget(
                title: item['title'],
                subTitle: item['sub_title'],
                onTap: item['nav_to'],
              );
            },
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> _navigateOptions = [
  {
    "title": TranslationKeys.howCanWeHelpYou.tr,
    "sub_title": TranslationKeys.support.tr,
    "nav_to": () =>
        Get.toNamed(AppRoutes.helpAndFaqs, arguments: {AppConstants.faq: false}),
  },
  {
    "title": TranslationKeys.helpCenter.tr,
    "sub_title": TranslationKeys.generalInformation.tr,
    "nav_to": () =>
        Get.toNamed(AppRoutes.helpAndFaqs, arguments: {AppConstants.faq: true}),
  },
];
