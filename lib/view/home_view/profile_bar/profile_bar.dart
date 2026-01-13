import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_assets/app_assets.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/routes/app_routes.dart';
import 'package:madang/widgets/list_info/list_info.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 100,
        title: TextWidget.h3("Profile", AppColors.blackColor, context),
      ),
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               mainAxisSize: MainAxisSize.min,
               children: [
               CircleAvatar(backgroundImage: AssetImage(AppAssets.profileImage),radius: 40,),
               SizedBox(width: 20,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   TextWidget.h4("Michael Antonio", AppColors.blackColor, context),
                   TextWidget.h5("mich@gmail.com", AppColors.blackColor, context),
                 ],
               ),
                 Spacer(),
                 GestureDetector(
                   onTap: (){},
                   child: Row(children: [
                     Icon(Icons.edit,size: 16,),
                     SizedBox(width: 4,),
                     TextWidget.h5("Edit", AppColors.blackColor, context),
                   ],),
                 )
             ],),
              SizedBox( height: 40,),
              TextWidget.h5("Account", AppColors.blackColor, context),
              SizedBox(height: 20,),
              ListInfo(icon: Icons.credit_card, text: "Payment Method"),
              Divider(),
              ListInfo(icon: Icons.shopping_cart, text: "My Cart"),
              Divider(),
              ListInfo(icon: Icons.report, text: "Help & Report"),
              Divider(),
              ListInfo(icon: Icons.language, text: "Language"),
              Divider(),
              ListInfo(icon: Icons.notifications, text: "Notification"),
              Divider(),
              SizedBox( height: 10,),
              TextWidget.h5("More Info", AppColors.blackColor, context),
              SizedBox(height: 20,),
              ListInfo(icon: Icons.privacy_tip, text: "Privacy Policy"),
              Divider(),
              ListInfo(icon: Icons.article, text: "News & Services"),
              Divider(),
              ListInfo(icon: Icons.star, text: "Give Rating"),
              Divider(),
              SizedBox(height: 30,),
              Align(alignment: Alignment.center,
              child: TextButton(onPressed: (){
                Get.offAndToNamed(AppRoutes.signInScreen);
              }, child: TextWidget.h5("Logout", AppColors.redColor, context)),),
              

            ],
          ),
        ),
      )),
    );
  }
}
