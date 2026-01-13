import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/controller/home_controller/home_controller.dart';
import 'package:madang/view/home_view/home_bar/home_bar.dart';
import 'package:madang/view/home_view/profile_bar/profile_bar.dart';
import 'package:madang/view/home_view/recent_bar/recent_bar.dart';
import 'package:madang/view/home_view/research_bar/research_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  final HomeController homeController = Get.find<HomeController>();

  final List <Widget> screens = [
    HomeBar(),
    ReSearchBar(),
  RecentBar(),
  ProfileBar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      body: screens[homeController.currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homeController.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: homeController.changeTab,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.greyColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.refresh),label: "Recent"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    ));
  }
}
