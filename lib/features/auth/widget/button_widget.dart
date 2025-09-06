
import 'package:ecommerce_app/core/constants/colors/app_colors.dart';
import 'package:ecommerce_app/core/constants/style/text_style.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const ButtonWidget({
    super.key, required this.buttonName, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonBgColor,
        shadowColor: AppColors.buttonTextColor,
        foregroundColor: AppColors.buttonTextColor,
        minimumSize: Size(double.infinity, 50),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(25),
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonName,style: AppTextStyle.ButtonInText,),
    );
  }
}
