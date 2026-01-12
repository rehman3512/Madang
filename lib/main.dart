import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madang/bindings/app_binding.dart';
import 'package:madang/routes/app_routes.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Madang",
      initialBinding: AppBindings(),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}
