import 'package:ecommerce_app/core/constants/colors/app_colors.dart';
import 'package:flutter/widgets.dart';

class AppTextStyle {
  static TextStyle title = TextStyle(
    // fontFamily: AppFont.ptSans,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle SubTitle = TextStyle(
    // fontFamily: AppFont.ptSans,
    fontSize: 12,
    color: AppColors.subTitleTextColor,
  );

  static TextStyle TextButton = TextStyle(
    // fontFamily: AppFont.ptSans,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.subTitleTextColor,
  );

  static TextStyle ButtonInText = TextStyle(
    // fontFamily: AppFont.ptSans,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle NormalText = TextStyle(
    // fontFamily: AppFont.ptSans,
    fontSize: 14,
  );

  static TextStyle TitleText = TextStyle(
    // fontFamily: AppFont.ptSans,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
