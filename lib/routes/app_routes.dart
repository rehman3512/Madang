import 'package:get/get.dart';
import 'package:madang/view/auth_view/signIn_view/signIn_view.dart';
import 'package:madang/view/auth_view/signUp_view/signUp_view.dart';
import 'package:madang/view/starting_view/onBoarding_view/onBoarding_view.dart';
import 'package:madang/view/starting_view/splash_view/splash_view.dart';
import 'package:madang/widgets/bottom_nav_bar/bottom_nav_bar.dart';

class AppRoutes{

  static String splashScreen = "/";
  static String onBoardingScreen = "/OnBoardingView";
  static String signUpScreen = "/SignUpView";
  static String signInScreen = "/SignInView";
  static String homeScreen = "/BottomNavBar";

  static final routes = [
    GetPage(name: splashScreen, page: ()=> SplashView()),
    GetPage(name: onBoardingScreen, page: ()=> OnBoardingView()),
    GetPage(name: signUpScreen, page: ()=> SignUpView()),
    GetPage(name: signInScreen, page: ()=> SignInView()),
    GetPage(name: homeScreen, page: ()=> BottomNavBar())

  ];

}