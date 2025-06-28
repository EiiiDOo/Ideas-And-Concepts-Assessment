import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ideas_and_concepts_assessment_task/core/middleware/auth_redirect_middleware.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/bindings/faqs_binding.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/pages/customer_service_page.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/pages/help_faq_page.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/pages/login_page.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.customerServices,
      page: () => CustomerServiceScreen(),
      middlewares: [AuthRedirectMiddleware()],
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      middlewares: [AuthRedirectMiddleware()],
    ),
    GetPage(
      name: AppRoutes.helpAndFaqs,
      page: () => HelpAndFaqPage(),
      middlewares: [AuthRedirectMiddleware()],
      binding: FaqsBinding()
    ),
  ];
}
