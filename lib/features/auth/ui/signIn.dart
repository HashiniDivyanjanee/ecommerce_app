import 'package:ecommerce_app/core/constants/style/text_style.dart';
import 'package:ecommerce_app/features/auth/widget/button_widget.dart';
import 'package:ecommerce_app/features/auth/widget/checkbox_widget.dart';
import 'package:ecommerce_app/features/auth/widget/sub_title.dart';
import 'package:ecommerce_app/features/auth/widget/text_button_widget.dart';
import 'package:ecommerce_app/features/auth/widget/text_field_widget.dart';
import 'package:ecommerce_app/features/auth/widget/title_widget.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
          child: Column(
            children: [
              TitleWidget(title: 'Log in'),
              SizedBox(height: 5),
              SubTitle(
                sub_title:
                    "Enter your email & password to securely access your account and enjoy a personalized shopping experience.",
              ),
              SizedBox(height: 35),
              TextFieldWidget(
                hintText: 'Email Address',
                prefixIcon: Icon(Icons.email),
              ),
              SizedBox(height: 18),
              TextFieldWidget(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CheckBoxWidget(),
                  Text('Remember me', style: AppTextStyle.TextButton),
                  SizedBox(width: 90),
                  TextButtonWidget(
                    buttonName: 'Foget Password',
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              ButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
