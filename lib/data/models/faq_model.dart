import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/faq_entity.dart';

class FaqModel {
  final String title;
  final String description;
  final String category;

  FaqModel({
    required this.title,
    required this.description,
    required this.category,
  });


  factory FaqModel.fromFireStore(
      DocumentSnapshot<Map<String, dynamic>> doc,
      SnapshotOptions? options,
      ) {
    final data = doc.data()!;
    return FaqModel(
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      category: data['category'] ?? '',
    );
  }

  /// Convert to Firestore format
  Map<String, dynamic> toFireStore() {
    return {
      'title': title,
      'description': description,
      'category': category,
    };
  }

  /// Map from Domain Entity
  factory FaqModel.fromEntity(FaqEntity entity) {
    return FaqModel(
      title: entity.title,
      description: entity.description,
      category: entity.category,
    );
  }

  /// Map to Domain Entity
  FaqEntity toEntity() {
    return FaqEntity(
      title: title,
      description: description,
      category: category,
    );
  }
}
