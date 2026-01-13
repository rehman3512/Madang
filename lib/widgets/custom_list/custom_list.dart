import 'package:flutter/material.dart';
import 'package:madang/constants/app_assets/app_assets.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class CustomList extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String date;
  final Color statusColor;
  final String status;
  const CustomList({super.key,
  required this.image,
  required this.title, required this.date,
  required this.subTitle,
  required this.statusColor,
  required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 80,width: 80,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(6),
        ),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget.h4(title, AppColors.blackColor, context),
            TextWidget.h5(subTitle, AppColors.greyColor, context),
            TextWidget.h5(date, AppColors.blackColor, context),
          ],
        ),
        Spacer(),
        TextWidget.h5(status, statusColor, context),
      ],
    );
  }
}
