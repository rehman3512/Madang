import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/routes/app_routes.dart';
import 'package:madang/widgets/custom_button/custom_button.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 160),
                TextWidget.h2("Madang", AppColors.primaryColor, context),
                SizedBox(height: 10),
                TextWidget.h4(
                  "Booking a table and food from everywhere",
                  AppColors.blackColor,
                  context,
                ),
                SizedBox(height: 150),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Get.offAndToNamed(AppRoutes.signUpScreen);
                    },
                    child: CustomButton(
                      text: "Sign Up",
                      color: AppColors.primaryColor,
                      textColor: AppColors.whiteColor,
                      borderColor: AppColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Get.offAndToNamed(AppRoutes.signInScreen);
                    },
                    child: CustomButton(
                      text: "Login",
                      color: AppColors.whiteColor,
                      textColor: AppColors.primaryColor,
                      borderColor: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
