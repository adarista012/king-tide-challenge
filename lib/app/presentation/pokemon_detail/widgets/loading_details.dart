import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget loadingDetails() {
  return const Padding(
    padding: EdgeInsets.only(top: 32.0),
    child: Center(
      child: CircularProgressIndicator(
        color: AppColors.white,
      ),
    ),
  );
}
