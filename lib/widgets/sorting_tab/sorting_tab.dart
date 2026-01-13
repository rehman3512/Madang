import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/sorting_tab/tab_item/tab_item.dart';

class SortingTab extends StatelessWidget {
  const SortingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      final tabWidth = 60.0;
      final spacing = 40.0;
        return Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                    bottom: 0,
                    child: Container(
                      height: 1,
                      width: constraints.maxWidth,
                      color: AppColors.greyColor,
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabItem(title: "Newest", index: 0, tabWidth: tabWidth),
                    SizedBox(width: spacing,),
                    TabItem(title: "Oldest", index: 1, tabWidth: tabWidth)
                  ],
                )
              ],
            ),
          ],
        );
      });
  }
}
