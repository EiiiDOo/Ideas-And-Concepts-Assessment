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
    return user != null
        ? RouteSettings(name: AppRoutes.customerServices)
        : RouteSettings(name: AppRoutes.login);
  }
}
