import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_and_concepts_assessment_task/core/constants/app_constants.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/states/faq_state.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/view_models/faq_view_model.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/choice_chip_tab.dart';
import 'package:ideas_and_concepts_assessment_task/presentation/views/widgets/custom_search_bar.dart';
import '../../../config/localization/translations_keys.dart';
import '../../../domain/entities/faq_entity.dart';
import 'faq_category_list.dart';

class FaqTab extends StatefulWidget {
  const FaqTab({super.key});

  @override
  State<FaqTab> createState() => _FaqTabState();
}

class _FaqTabState extends State<FaqTab> {
  int selectedIndex = 0;
  TextEditingController? searchController;
  final RxString searchText = ''.obs;
  List<FaqEntity> allFaqItems = []; // Original list
  List<FaqEntity> faqItems = [];    // Filtered list


  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    searchController?.addListener(listener);

    debounce(searchText, (callback) {
      final filtered = allFaqItems
          .where(
            (element) =>
        element.title.toLowerCase().contains(callback.toLowerCase()) ||
            element.description.toLowerCase().contains(callback.toLowerCase()),
      )
          .toList();
      setState(() {
        faqItems = filtered;
      });
    }, time: const Duration(milliseconds: 500));
  }


  @override
  void dispose() {
    if (searchController != null) {
      searchController?.removeListener(listener);
      searchController?.dispose();
    }
    super.dispose();
  }

  void listener() {
    searchText.value = searchController?.text ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return GetX<FaqViewModel>(
      builder: (controller) {
        final state = controller.state.value;
        if (state is FaqError) {
          return Center(child: Text(state.message));
        } else if (state is FaqLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is FaqLoaded) {
          if (allFaqItems.isEmpty) {
            allFaqItems = state.faqs;
            faqItems = allFaqItems;
          }
          final generalFaq = faqItems
              .where((f) => f.category == AppConstants.general)
              .toList();
          final accountFaq = faqItems
              .where((f) => f.category == AppConstants.account)
              .toList();
          final serviceFaq = faqItems
              .where((f) => f.category == AppConstants.service)
              .toList();

          final List<String> faqTabs = [
            TranslationKeys.general.tr,
            TranslationKeys.account.tr,
            TranslationKeys.service.tr,
          ];

          final List<Widget> faqTabViews = [
            FaqCategoryList(faqItems: generalFaq),
            FaqCategoryList(faqItems: accountFaq),
            FaqCategoryList(faqItems: serviceFaq),
          ];
          return Column(
            children: [
              CustomSearchBar(
                hintText: TranslationKeys.search.tr,
                controller: searchController,
              ),
              ChoiceChipTab(
                tabViews: faqTabViews,
                tabs: faqTabs,
                selectedIndex: selectedIndex,
                onTabSelected: (ind) => setState(() {
                  selectedIndex = ind;
                }),
              ),
            ],
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
