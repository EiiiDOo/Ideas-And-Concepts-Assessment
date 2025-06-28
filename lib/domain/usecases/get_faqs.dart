import 'package:ideas_and_concepts_assessment_task/domain/entities/faq_entity.dart';
import 'package:ideas_and_concepts_assessment_task/domain/repositories/faq_repository.dart';

class GetFaqsUseCase {
  final FaqRepository repo;

  GetFaqsUseCase({required this.repo});

  Future<List<FaqEntity>> call() {
    return repo.getFaqs();
  }
}
