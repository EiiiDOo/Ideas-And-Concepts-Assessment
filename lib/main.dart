import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/routes/route_pages.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/bindings/customer_binding.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/view_models/settings_controller.dart';
import 'config/localization/translation_service.dart';
import 'config/routes/app_routes.dart';
import 'config/theme/app_theme.dart';
import 'core/constants/app_constants.dart';
import 'core/error/failure.dart';
import 'core/services/local_storage_service.dart';
import 'core/services/shared_prefs_service.dart';
import 'data/models/faq_model.dart';
import 'domain/entities/faq_entity.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final localStorage = SharedPrefsService();
  await localStorage.init();
  Get.put<LocalStorageService>(localStorage);

  await CustomerServiceBinding().dependencies();


  runApp(CustomerSupport(settings: Get.find<SettingsController>()));
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

      translations: TranslationService(),
      locale: settings.locale,

      theme: AppTheme.light,
      // Light theme
      darkTheme: AppTheme.dark,
      // Dark theme (you'll need to create this)
      themeMode: settings.themeMode,
    );
  }
}

// Future<void> writeFaqs(List<FaqEntity> faqItems) async {
//   try {
//     final docRef = FirebaseFirestore.instance
//         .collection(AppConstants.faq)
//         .withConverter<FaqModel>(
//           fromFirestore: FaqModel.fromFireStore,
//           toFirestore: (value, options) => value.toFireStore(),
//         );
//
//     for (final faq in faqItems) {
//       final faqModel = FaqModel(
//         title: faq.title,
//         description: faq.description,
//         category: faq.category,
//       );
//
//
//       await docRef.add(faqModel);
//     }
//
//     print("FAQs uploaded successfully.");
//   } on FirebaseException catch (e) {
//     throw FireStoreFailure(
//       errMsg: "error_msg: ${e.message} error_code: ${e.code}",
//     );
//   } catch (e, trace) {
//     throw Failure(errMsg: 'error_msg: ${e.toString()} trace: $trace');
//   }
// }
//
// final List<FaqEntity> faqItems = [
//   // General
//   FaqEntity(
//     title: 'What is IC Company?',
//     description:
//         'IC Company is a leading provider of tech solutions in the GCC region.',
//     category: 'general',
//   ),
//   FaqEntity(
//     title: 'Where are you located?',
//     description: 'Our head office is located in Riyadh, Saudi Arabia.',
//     category: 'general',
//   ),
//
//   // Account
//   FaqEntity(
//     title: 'How do I reset my password?',
//     description:
//         'Go to the login screen and tap "Forgot Password" to receive a reset link.',
//     category: 'account',
//   ),
//   FaqEntity(
//     title: 'How do I delete my account?',
//     description: 'Please contact customer support to request account deletion.',
//     category: 'account',
//   ),
//
//   // Services
//   FaqEntity(
//     title: 'What services do you offer?',
//     description:
//         'We offer cloud hosting, IT consulting, mobile app development, and more.',
//     category: 'service',
//   ),
//   FaqEntity(
//     title: 'Do you offer 24/7 support?',
//     description: 'Yes, our support team is available around the clock.',
//     category: 'service',
//   ),
// ];
