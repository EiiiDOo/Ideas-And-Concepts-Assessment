

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/bindings/customer_binding.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/pages/customer_service_screen.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/pages/help_faq_screen.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.customerServices,
      page: () => CustomerServiceScreen()
    ),
    GetPage(
      name: AppRoutes.helpAndFaqs,
      page: () => HelpAndFaqScreen(),
      // binding: ,
    ),
  ];
}
