import 'package:get/get.dart';

class HomeController extends GetxController{

  var currentIndex = 0.obs;
  RxInt selectIndex = 0.obs;

  changeSortTab(int index){
    selectIndex.value = index;
  }

  changeTab(int index){
    currentIndex.value = index;
  }

}