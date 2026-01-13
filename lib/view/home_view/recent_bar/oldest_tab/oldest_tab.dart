import 'package:flutter/material.dart';
import 'package:madang/constants/app_assets/app_assets.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/custom_list/custom_list.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class OldestTab extends StatelessWidget {
  const OldestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomList(image: AppAssets.noodleImage,
            title: "Noodle Ex",
            date: "23 August 2021, 15:32",
            subTitle: "Work Table . 1 Flower",
            status: "Done",
            statusColor: AppColors.primaryColor,
          ),
          SizedBox(height: 10,),
          CustomList(image: AppAssets.noodleImage,
            title: "Noodle Ex",
            date: "23 August 2021, 15:32",
            subTitle: "Work Table . 1 Flower",
            status: "Cancel",
            statusColor: AppColors.redColor,
          ),
        ],
      ),
    ));
  }
}
