import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ideas_and_concepts_assessment_task/core/constants/app_constants.dart';
import 'package:ideas_and_concepts_assessment_task/core/error/failure.dart';
import 'package:ideas_and_concepts_assessment_task/data/models/faq_model.dart';

abstract class FaqRemoteDataSource {
  Future<List<FaqModel>> getFaqs();
}

class FaqRemoteDataSourceImpl extends FaqRemoteDataSource {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<FaqModel>> getFaqs() async {
    try {
      final docRef = db
          .collection(AppConstants.faq)
          .withConverter<FaqModel>(
            fromFirestore: FaqModel.fromFireStore,
            toFirestore: (value, options) => value.toFireStore(),
          );
      final querySnapshot = await docRef.get();
      final faqs = querySnapshot.docs.map((doc) => doc.data()).toList();

      return faqs;
    } on FirebaseException catch (e) {
      throw FireStoreFailure(
        errMsg: "error_msg: ${e.message} error_code: ${e.code}",
      );
    } catch (e, trace) {
      throw Failure(errMsg: 'error_msg: ${e.toString()} trace: $trace');
    }
  }
}
