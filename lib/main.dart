import 'package:ecommerce_app/core/constants/colors/app_colors.dart';
import 'package:ecommerce_app/features/auth/ui/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.bgColor,
      ),
      home: Signin(),
    );
  }
}
