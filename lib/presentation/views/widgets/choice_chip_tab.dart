import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/theme/app_colors.dart';

class ChoiceChipTab extends StatelessWidget {
  final List<Widget> tabViews;
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const ChoiceChipTab({
    super.key,
    required this.tabViews,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 10,
          children: List.generate(tabs.length, (index) {
            return Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) => ChoiceChip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 0, color: Colors.transparent),
                  ),
                  labelStyle: TextStyle(
                    color: selectedIndex == index
                        ? AppColors.terracotta
                        : AppColors.brownRosy,
                  ),
                  backgroundColor: context.theme.hintColor,
                  selectedColor: context.theme.primaryColor,
                  showCheckmark: false,
                  label: SizedBox(
                    width: constraints.maxWidth,
                    child: Text(
                      tabs[index],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  selected: selectedIndex == index,
                  onSelected: (value) => onTabSelected(index),
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 16),
        tabViews[selectedIndex],
      ],
    );
  }
}

