import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/controller/auth_controller/auth_controller.dart';
import 'package:madang/routes/app_routes.dart';
import 'package:madang/widgets/custom_button/custom_button.dart';
import 'package:madang/widgets/custom_textFormField/custom_textFormField.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: AppColors.blackColor),
        ),
        title: TextWidget.h3("Sign Up", AppColors.blackColor, context),
      ),
      backgroundColor: AppColors.offWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  controller: authController.nameController,
                  label: "Name",
                  text: "Name",
                  color: AppColors.blackColor,
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return "Name cannot be empty";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  controller: authController.emailController,
                  label: "Email",
                  text: "Email",
                  color: AppColors.blackColor,
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return "Email cannot be empty";
                    }else if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)){
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                Obx(
                  ()=> CustomTextFormField(
                    controller: authController.passController,
                    label: "Password",
                    text: "Password",
                    color: AppColors.blackColor,
                    validator: (value){
                      if(value == null || value.trim().isEmpty){
                        return "Password cannot be empty";
                      }else if(value.length < 6){
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                    obscure: authController.isPassword.value,
                    suffixIcon: IconButton(onPressed: (){
                      authController.isPassword.value =
                          !authController.isPassword.value;
                    }, icon: Icon(authController.isPassword.value ?
                    Icons.visibility_outlined :
                    Icons.visibility_off_outlined
                    )),
                  ),
                ),
                Obx(
                  ()=> CustomTextFormField(
                    controller: authController.confirmPassController,
                    label: "Confirm Password",
                    text: "Confirm Password",
                    color: AppColors.blackColor,
                    validator: (value){
                      if(value == null || value.trim().isEmpty){
                        return "Confirm password cannot be empty";
                      }else if(value != authController.passController.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                    obscure: authController.isConfirm.value,
                    suffixIcon: IconButton(onPressed: (){
                      authController.isConfirm.value = !authController.isConfirm.value;
                    }, icon: Icon(
                      authController.isConfirm.value ?
                          Icons.visibility_outlined :
                          Icons.visibility_off_outlined
                    )),
                  ),
                ),
                SizedBox(height: 40,),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){},
                    child: CustomButton(text: "Sign Up Now", color: AppColors.primaryColor,
                        textColor: AppColors.whiteColor, borderColor: AppColors.primaryColor),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget.h5("Already have an account?", AppColors.greyColor, context),
                    TextButton(onPressed: (){
                      authController.clearAllFields();
                      Get.toNamed(AppRoutes.signInScreen);
                    }, child: TextWidget.h5("Login", AppColors.primaryColor, context))
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
