import 'package:ecommerce_app/core/constants/style/text_style.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String sub_title;
  const SubTitle({super.key, required this.sub_title});

  @override
  Widget build(BuildContext context) {
    return Text(
      sub_title,
      textAlign: TextAlign.center,
      style: AppTextStyle.SubTitle,
    );
  }
}
