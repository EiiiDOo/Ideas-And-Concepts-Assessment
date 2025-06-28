import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/config/routes/app_routes.dart';
import 'package:ideas_and_concepts_assessment_task/core/constants/app_constants.dart';
import 'package:ideas_and_concepts_assessment_task/core/services/local_storage_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: "a@a.com",
              password: "123456",
            );
            if (user.user != null) {
              Get.find<LocalStorageService>().writeString(
                AppConstants.user,
                "here",
              );
              await Get.offAllNamed(AppRoutes.customerServices);
            } else {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(title: Text('Error Occur')),
              );
            }
          },
          child: Text("Sign In"),
        ),
      ),
    );
  }
}
