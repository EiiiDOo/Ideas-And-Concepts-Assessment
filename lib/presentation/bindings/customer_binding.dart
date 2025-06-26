import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/view_models/settings_controller.dart';

class CustomerServiceBinding extends Bindings {
  @override
  Future<void> dependencies() async{

    final settingController = SettingsController(storage: Get.find());
    await settingController.init();
    Get.put<SettingsController>(settingController);
  }
}