import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_styles.dart';

Widget buildLoading() {
  return Container(
    decoration: AppStyles.gradientDecoration,
    child: const Center(
      child: CircularProgressIndicator(
        color: AppColors.white,
      ),
    ),
  );
}
