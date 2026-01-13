import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/controller/home_controller/home_controller.dart';
import 'package:madang/view/home_view/recent_bar/newest_tab/newest_tab.dart';
import 'package:madang/view/home_view/recent_bar/oldest_tab/oldest_tab.dart';
import 'package:madang/widgets/sorting_tab/sorting_tab.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class RecentBar extends StatelessWidget {
  RecentBar({super.key});

  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 100,
        title: TextWidget.h3("Recent", AppColors.blackColor, context),
      ),
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          SortingTab(),
          SizedBox(height: 20,),
          Expanded(child: Obx((){
            return IndexedStack(
              index: homeController.selectIndex.value,
              children: [
                NewestTab(),
                OldestTab()
              ],
            );
          }),
          )
        ],
      )),
    );
  }
}
