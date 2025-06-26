import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/routes/route_pages.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/bindings/customer_binding.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/view_models/settings_controller.dart';
import 'config/localization/translation_service.dart';
import 'config/routes/app_routes.dart';
import 'core/services/local_storage_service.dart';
import 'core/services/shared_prefs_service.dart';
import 'firebase_options.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  final localStorage = SharedPrefsService();
  await localStorage.init();
  Get.put<LocalStorageService>(localStorage);

  await CustomerServiceBinding().dependencies();

  runApp(CustomerSupport(settings: Get.find<SettingsController>(),));
}
class CustomerSupport extends StatelessWidget {

  final SettingsController settings;

  const CustomerSupport({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(


      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.customerServices,
      getPages: AppPages.routes,

      translations:TranslationService(),locale: settings.locale,


    );
  }
}
