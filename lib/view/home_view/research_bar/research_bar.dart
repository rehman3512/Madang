import 'package:flutter/material.dart';
import 'package:madang/constants/app_assets/app_assets.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/custom_button/custom_button.dart';
import 'package:madang/widgets/custom_textFormField/custom_textFormField.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class ReSearchBar extends StatelessWidget {
  const ReSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 200,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget.h3("Search", AppColors.blackColor, context),
            CustomTextFormField(
              prefixIcon: Icon(Icons.search),
              text: "Search food, table, or something",
              color: AppColors.blackColor,
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.searchLogoImage),
              SizedBox(height: 20,),
              TextWidget.h3("Well, there is no result you are looking for :(", AppColors.blackColor, context),
              SizedBox(height: 30,),
              CustomButton(text: "Find Other", color: AppColors.primaryColor,
                  textColor: AppColors.whiteColor, borderColor: AppColors.primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
