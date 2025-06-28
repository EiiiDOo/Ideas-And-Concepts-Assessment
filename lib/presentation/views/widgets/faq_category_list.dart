import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/desc_widget.dart';

import '../../../domain/entities/faq_entity.dart';

class FaqCategoryList extends StatelessWidget {
  final List<FaqEntity> faqItems;

  const FaqCategoryList({super.key, required this.faqItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: faqItems.length,
      itemBuilder: (context, index) {
        final item = faqItems[index];
        return Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            title: Text(item.title),
            children: [DescWidget(desc: item.description)],
          ),
        );
      },
    );
  }
}
