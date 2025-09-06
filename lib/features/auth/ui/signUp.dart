import 'package:ecommerce_app/app/routes/app_routes.dart';
import 'package:ecommerce_app/core/constants/style/text_style.dart';
import 'package:ecommerce_app/features/auth/widget/button_widget.dart';
import 'package:ecommerce_app/features/auth/widget/icon_button_widget.dart';
import 'package:ecommerce_app/features/auth/widget/sub_title.dart';
import 'package:ecommerce_app/features/auth/widget/text_button_widget.dart';
import 'package:ecommerce_app/features/auth/widget/text_field_widget.dart';
import 'package:ecommerce_app/features/auth/widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
          child: Column(
            children: [
              // ** Header Section **
              TitleWidget(title: 'Create Account'),
              SizedBox(height: 5),
              SubTitle(
                sub_title:
                    "Create a new account to get started & enjoy a personalized shopping experience.",
              ),
              SizedBox(height: 35),
              // ** Email & Password enter Section **
              TextFieldWidget(hintText: 'Name', prefixIcon: Icon(Icons.email)),
              SizedBox(height: 18),
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
              SizedBox(height: 18),
              TextFieldWidget(
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              SizedBox(height: 30),

              // ** Sign Up Button Section **
              ButtonWidget(buttonName: 'Create Account'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: AppTextStyle.NormalText,
                  ),
                  TextButtonWidget(
                    buttonName: 'Sign In here',
                    onPressed: () {
                     context.push(AppRoutes.signIn);
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 20),

              // **Other Sign Up Button Section **
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
