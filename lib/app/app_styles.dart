import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

abstract class AppStyles {
  static TextStyle titleLargeWhite = const TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 28.0,
  );

  static BoxDecoration gradientDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.purpleAccent,
        AppColors.purple,
        AppColors.blue,
      ], // Gradient from https://learnui.design/tools/gradient-generator.html
    ),
  );
}
