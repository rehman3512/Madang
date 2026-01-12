import 'package:get/get.dart';

class HomeController extends GetxController{

  var currentIndex = 0.obs;

  changeTab(int index){
    currentIndex.value = index;
  }

}