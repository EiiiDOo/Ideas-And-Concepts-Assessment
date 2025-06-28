import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/data/data_sources/faq_data_source.dart';
import 'package:ideas_and_concepts_assessment_task/domain/usecases/get_faqs.dart';
import '../../data/repositories/faq_repository.dart';
import '../../domain/repositories/faq_repository.dart';
import '../view_models/faq_view_model.dart';

class FaqsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FaqRemoteDataSource>(FaqRemoteDataSourceImpl());
    Get.put<FaqRepository>(FaqRepositoryImp(remoteDataSource: Get.find()));
    Get.put<GetFaqsUseCase>(GetFaqsUseCase(repo: Get.find()));
    Get.put<FaqViewModel>(FaqViewModel(faqsUseCase: Get.find()));
  }
}
