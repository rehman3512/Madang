import 'package:flutter/material.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class ListInfo extends StatelessWidget {
  final String text;
  final IconData icon;
  const ListInfo({super.key,required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: AppColors.greyColor,size: 24,),
      title: TextWidget.h4(text, AppColors.blackColor, context),
      trailing: Icon(Icons.arrow_forward_ios_outlined,color: AppColors.blackColor,size: 16,),
    );
  }
}
