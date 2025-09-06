import 'package:ecommerce_app/app/routes/app_route_generator.dart';
import 'package:ecommerce_app/core/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.bgColor),
      routerConfig: goRoute,
    );
  }
}
