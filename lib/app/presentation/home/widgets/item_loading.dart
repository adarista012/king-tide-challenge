import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget itemLoading() {
  return const SizedBox(
    width: 240,
    height: 300,
    child: Center(
      child: CircularProgressIndicator(
        color: AppColors.white,
      ),
    ),
  );
}
