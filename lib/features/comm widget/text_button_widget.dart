import 'package:ecommerce_app/core/constants/style/text_style.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const TextButtonWidget({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(buttonName, style: AppTextStyle.TextButton),
    );
  }
}
