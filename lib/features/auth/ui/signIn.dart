import 'package:ecommerce_app/features/auth/widget/sub_title.dart';
import 'package:ecommerce_app/features/auth/widget/title_widget.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              TitleWidget(title: 'Log in'),
              SizedBox(height: 5),
              SubTitle(
                sub_title:
                    "Enter your email & password to securely access your account and enjoy a personalized shopping experience.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
