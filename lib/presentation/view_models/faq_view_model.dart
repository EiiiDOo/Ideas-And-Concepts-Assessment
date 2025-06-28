import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/domain/entities/faq_entity.dart';
import 'package:ideas_and_concepts_assessment_task/domain/usecases/get_faqs.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/states/faq_state.dart';

class FaqViewModel extends GetxController {
  final GetFaqsUseCase faqsUseCase;

  FaqViewModel({required this.faqsUseCase});

  List<FaqEntity> faqs = [];
  var state = Rxn<FaqState>(FaqInitial());

  @override
  void onInit() {
    super.onInit();
    getFaqs();
  }

  void getFaqs() async {
    state.value = FaqLoading();
    try{
      final faqs = await  faqsUseCase();
      state.value = FaqLoaded(faqs);
    }catch(e){
      state.value = FaqError(e.toString());
    }
  }
}

