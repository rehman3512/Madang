import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:madang/routes/app_routes.dart';

class AuthController extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final RxBool isPassword = true.obs;
  final RxBool isConfirm = true.obs;

  clearAllFields(){
    nameController.clear();
    emailController.clear();
    passController.clear();
    confirmPassController.clear();
  }

  checkLogin()async{
    await Future.delayed(Duration(seconds: 2));
    Get.offAndToNamed(AppRoutes.onBoardingScreen);
    // User? user = FirebaseAuth.instance.currentUser;
    // if(user!=null)
    //   {
    //     Get.offAndToNamed(AppRoutes.homeScreen);
    //   }
    // else if(
    // Get.offAndToNamed(AppRoutes.signUpScreen);
    // )
  }


}