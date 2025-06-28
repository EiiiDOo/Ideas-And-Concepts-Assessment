class FaqEntity {
  final String title;
  final String description;
  final String category; // 'general', 'account', 'service'

  FaqEntity({
    required this.title,
    required this.description,
    required this.category,
  });
}
