import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/controller/home_controller/home_controller.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class TabItem extends StatelessWidget {
  final String title;
  final int index;
  final double tabWidth;
  TabItem({super.key,
  required this.title,
  required this.index,
  required this.tabWidth,
  });

  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> homeController.changeSortTab(index),
      child: Obx((){
        bool isSelected = homeController.selectIndex.value == index;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextWidget.h5(title, isSelected ? AppColors.primaryColor :
                AppColors.greyColor, context),
            SizedBox(height: 6,),
            AnimatedContainer(
              duration: Duration(microseconds: 250),
              height: 3,width: isSelected ? 60 : 0,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        );

      })
    );
  }
}
