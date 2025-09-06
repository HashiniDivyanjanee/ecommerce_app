import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;
  const IconButtonWidget({
    super.key, required this.icon, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: icon, iconSize: 35,);
  }
}