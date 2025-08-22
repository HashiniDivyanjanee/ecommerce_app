import 'dart:async';
import 'package:ecommerce_app/features/banner_slider/data/data.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Auto-slide every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < bannerSlider.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // ✅ Preload all images here (safe with context)
    for (var imagePath in bannerSlider) {
      precacheImage(AssetImage(imagePath), context);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Full screen banner slider
          SizedBox(
            height: screenHeight,
            child: PageView.builder(
              controller: _pageController,
              itemCount: bannerSlider.length,
              onPageChanged: (index) {
                setState(() => _currentPage = index);
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  bannerSlider[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: screenHeight,
                );
              },
            ),
          ),

          // Button above banner
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: () {
                debugPrint("Button pressed!");
              },
              child: const Text(
                "Click Me",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),

          // Dots indicator
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                bannerSlider.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: _currentPage == index ? 12 : 8,
                  height: _currentPage == index ? 12 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.white : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
