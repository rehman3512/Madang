import 'package:flutter/material.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class OldestTab extends StatelessWidget {
  const OldestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget.h3("Oldest Data Here", AppColors.blackColor, context),
    );
  }
}
