import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/routes/app_routes.dart';
import 'package:ideas_and_concepts_assessment_task/core/constants/app_constants.dart';
import 'package:ideas_and_concepts_assessment_task/core/services/local_storage_service.dart';

class AuthRedirectMiddleware extends GetMiddleware {
  final localStorage = Get.find<LocalStorageService>();

  @override
  RouteSettings? redirect(String? route) {
    final user = localStorage.readString(AppConstants.user);

    final isLoggingIn = route == AppRoutes.login;

    if (user == null && !isLoggingIn) {
      // Not logged in → redirect to login
      return const RouteSettings(name: AppRoutes.login);
    }

    if (user != null && isLoggingIn) {
      // Already logged in → redirect to main app
      return const RouteSettings(name: AppRoutes.customerServices);
    }

    // No redirect needed
    return null;
  }

}
