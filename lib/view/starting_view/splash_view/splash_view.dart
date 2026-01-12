import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/controller/auth_controller/auth_controller.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    authController.checkLogin();
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: TextWidget.h1("Madang", AppColors.whiteColor, context),
        ),
      ),
    );
  }
}
