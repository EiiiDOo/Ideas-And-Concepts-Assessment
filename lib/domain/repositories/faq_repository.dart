import 'package:ideas_and_concepts_assessment_task/domain/entities/faq_entity.dart';

abstract class FaqRepository {
  Future<List<FaqEntity>> getFaqs();
}