import 'package:ecommerce_app/app/routes/app_routes.dart';
import 'package:ecommerce_app/core/constants/style/text_style.dart';
import 'package:ecommerce_app/features/auth/widget/button_widget.dart';
import 'package:ecommerce_app/features/auth/widget/checkbox_widget.dart';
import 'package:ecommerce_app/features/comm%20widget/icon_button_widget.dart';
import 'package:ecommerce_app/features/auth/widget/sub_title.dart';
import 'package:ecommerce_app/features/auth/widget/text_button_widget.dart';
import 'package:ecommerce_app/features/comm%20widget/text_field_widget.dart';
import 'package:ecommerce_app/features/auth/widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              // ** Header Section **
              TitleWidget(title: 'Sign in'),
              SizedBox(height: 5),
              SubTitle(
                sub_title:
                    "Enter your email & password to securely access your account and enjoy a personalized shopping experience.",
              ),
              SizedBox(height: 35),
              // ** Email & Password enter Section **
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

              // ** Foget Password and Save Email & Password Part **
              Row(
                children: [
                  CheckBoxWidget(),
                  Text('Remember me', style: AppTextStyle.TextButton),
                  SizedBox(width: 80),
                  TextButtonWidget(
                    buttonName: 'Foget Password',
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 30),

              // ** Log In Button Section **
              ButtonWidget(
                buttonName: 'Sign In',
                onPressed: () {
                  context.push(AppRoutes.home);
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: AppTextStyle.NormalText,
                  ),
                  TextButtonWidget(
                    buttonName: 'Sign Up here',
                    onPressed: () {
                      context.pushNamed(AppRoutes.signUp);
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 20),

              // **Other Log In Button Section **
              Text("Or Continue With Auccount", style: AppTextStyle.NormalText),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButtonWidget(
                    icon: Icon(Icons.facebook),
                    onPressed: () {},
                  ),
                  IconButtonWidget(
                    icon: Icon(Icons.wordpress_outlined),
                    onPressed: () {},
                  ),

                  IconButtonWidget(icon: Icon(Icons.apple), onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
