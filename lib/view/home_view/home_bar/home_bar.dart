import 'package:flutter/material.dart';
import 'package:madang/constants/app_assets/app_assets.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/model/food_model/food_model.dart';
import 'package:madang/widgets/deals_slider/deals_slider.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class HomeBar extends StatelessWidget {
  HomeBar({super.key});

  final List<FoodModel> foodList = [
    FoodModel(image: AppAssets.familyImage, title: "Family Package", subtitle: "1 large table 6 chair", price: "Rp320.000"),
    FoodModel(image: AppAssets.simpleImage, title: "Single Breakfast", subtitle: "1 table 1 chair", price: "70.000"),
    FoodModel(image: AppAssets.dateImage, title: "Date Package", subtitle: "1 table 2 chair", price: "135.000"),
    FoodModel(image: AppAssets.meatballImage, title: "Meatball Sweatie", subtitle: "1 table 1 chair", price: "63.000"),
    FoodModel(image: AppAssets.noodleImage, title: "Noodle Ex", subtitle: "1 table 1 chair", price: "42.000"),
    FoodModel(image: AppAssets.burgerImage, title: "Burger Ala Ala", subtitle: "1 table 1 chair", price: "55.000"),
    FoodModel(image: AppAssets.chickenImage, title: "Chicken collage", subtitle: "1 table 1 chair", price: "78.000"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 150,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget.h3("Hi, Michael", AppColors.blackColor, context),
            TextWidget.h4(
              "Get your favorite food here!",
              AppColors.blackColor,
              context,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: AppColors.greyColor),
          ),
        ],
      ),
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DealsSlider(),
                SizedBox(height: 30,),
                TextWidget.h3("Recommendation", AppColors.blackColor, context),
                SizedBox(height: 20,),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: foodList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                    mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.7
                    ),
                    itemBuilder: (context,index){
                    final item = foodList[index];
                    return Container(
                      height: 282,
                      width: 172,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        border: Border.all(color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(6),
                      ),child: Column(children: [
                        Expanded(
                            flex: 6,
                            child: Image.asset(item.image,width: double.infinity,
                                fit: BoxFit.cover,),
                        ),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextWidget.h5(item.title, AppColors.blackColor, context),
                                TextWidget.h5(item.subtitle, AppColors.greyColor, context),
                                TextWidget.h5(item.price, AppColors.blackColor, context),
                              ],
                            ),
                          ))
                    ],),
                    );
                    })


              ],
            ),
          ),
        ),
      ),
    );
  }
}
