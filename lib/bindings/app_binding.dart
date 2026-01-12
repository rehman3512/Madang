import 'package:get/get.dart';
import 'package:madang/controller/auth_controller/auth_controller.dart';
import 'package:madang/controller/home_controller/home_controller.dart';

class AppBindings extends Bindings{
@override
  void dependencies(){
  Get.put(AuthController());
  Get.put(HomeController());
}
}