import 'package:flutter/material.dart';
import 'package:madang/constants/app_assets/app_assets.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/list_info/list_info.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget.h3("Profile", AppColors.blackColor, context),
      ),
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             ListTile(
               // leading: CircleAvatar(child: Image.asset(AppAssets.profileImage,
               // fit: BoxFit.cover,),),
               title: TextWidget.h4("Michael Antonio", AppColors.blackColor, context),
               subtitle: TextWidget.h5(" mich@gmail.com", AppColors.blackColor, context),
               trailing: Row(children: [
                 Icon(Icons.edit),
                 TextWidget.h5("Edit", AppColors.blackColor, context)
               ],),
             ),
              SizedBox( height: 30,),
              TextWidget.h5("Account", AppColors.blackColor, context),
              SizedBox(height: 20,),
              ListInfo(icon: Icons.credit_card, text: "Payment Method"),
              
            ],
          ),
        ),
      )),
    );
  }
}
