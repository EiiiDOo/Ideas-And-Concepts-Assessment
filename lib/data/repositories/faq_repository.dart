import 'package:ideas_and_concepts_assessment_task/domain/entities/faq_entity.dart';
import 'package:ideas_and_concepts_assessment_task/domain/repositories/faq_repository.dart';

import '../data_sources/faq_data_source.dart';

class FaqRepositoryImp extends FaqRepository {
  final FaqRemoteDataSource _remoteDataSource;

  FaqRepositoryImp({required FaqRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  @override
  Future<List<FaqEntity>> getFaqs() async {
    final list = (await _remoteDataSource.getFaqs())
        .map((e) => e.toEntity())
        .toList();
    return list;
  }
}
