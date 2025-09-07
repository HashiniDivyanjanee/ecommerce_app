import 'dart:async';

import 'package:ecommerce_app/core/constants/colors/app_colors.dart';
import 'package:ecommerce_app/core/constants/style/text_style.dart';
import 'package:ecommerce_app/features/comm%20widget/icon_button_widget.dart';
import 'package:ecommerce_app/features/comm%20widget/text_button_widget.dart';
import 'package:ecommerce_app/features/comm%20widget/text_field_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final List<Map<String, dynamic>> categories = [
    {"name": " All", "icon": Icons.grid_view},
    {"name": " Coffee & tea", "icon": Icons.coffee},
    {"name": " Fruits", "icon": Icons.apple},
    {"name": " Fast food", "icon": Icons.fastfood},
    {"name": " Vegetables", "icon": Icons.eco},
  ];

  final List<String> offers = [
    'assets/images/b1.jpg',
    'assets/images/b2.jpg',
    'assets/images/b3.jpg',
  ];

  final List<Map<String, dynamic>> items = [
    {'name': 'Banana', 'price': 'Rs.120.00', 'image': 'assets/images/i1.jpg'},
    {'name': 'Banana', 'price': 'Rs.120.00', 'image': 'assets/images/i2.jpg'},
    {'name': 'Banana', 'price': 'Rs.120.00', 'image': 'assets/images/i3.jpeg'},
    {'name': 'Banana', 'price': 'Rs.120.00', 'image': 'assets/images/i4.jpg'},
    {'name': 'Banana', 'price': 'Rs.120.00', 'image': 'assets/images/i5.jpg'},
    {'name': 'Banana', 'price': 'Rs.120.00', 'image': 'assets/images/i2.jpg'},
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < offers.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.buttonBgColor,
        backgroundColor: AppColors.buttonBgColor ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: AppColors.buttonTextColor,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: AppColors.buttonTextColor,), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: AppColors.buttonTextColor,), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.edit_document,color: AppColors.buttonTextColor,), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: AppColors.buttonTextColor,), label: 'Account'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, right: 15, left: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/1.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome', style: AppTextStyle.SubTitle),
                            Text('Jerry Smith', style: AppTextStyle.TextButton),
                          ],
                        ),
                      ],
                    ),
                    IconButtonWidget(
                      icon: Icon(
                        Icons.notifications,
                        color: AppColors.buttonBgColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextFieldWidget(
                  hintText: 'Search here',
                  prefixIcon: Icon(Icons.search),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.buttonTextColor,
                              radius: 30,

                              child: Icon(
                                categories[index]['icon'],
                                size: 35,
                                color: AppColors.buttonBgColor,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              categories[index]['name'],
                              style: AppTextStyle.SubTitle,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 180,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: offers.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(offers[index], fit: BoxFit.cover),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular Items', style: AppTextStyle.TitleText),
                    TextButtonWidget(buttonName: 'View all', onPressed: () {}),
                  ],
                ),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 280,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.buttonTextColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: Colors.black12,
                          ),
                        ],
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(items[index]['image']),
                          Text(
                            items[index]['name'],
                            style: AppTextStyle.TextButton,
                          ),
                          Text(
                            items[index]['price'],
                            style: TextStyle(color: AppColors.buttonBgColor),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: AppColors.buttonBgColor,
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
