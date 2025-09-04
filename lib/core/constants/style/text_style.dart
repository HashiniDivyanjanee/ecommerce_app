import 'package:ecommerce_app/core/constants/colors/app_colors.dart';
import 'package:ecommerce_app/core/constants/font/app_font.dart';
import 'package:flutter/widgets.dart';

class AppTextStyle {
  static TextStyle title = TextStyle(
    fontFamily: AppFont.ptSans,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static TextStyle SubTitle = TextStyle(
    fontFamily: AppFont.ptSans,
    fontSize: 12,
    color: AppColors.subTitleTextColor
  );
}
