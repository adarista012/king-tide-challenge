import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget footer() {
  return const Padding(
    padding: EdgeInsets.all(24.0),
    child: Text(
      'Antonio Dante Arista Rivas',
      style: TextStyle(color: AppColors.white),
    ),
  );
}
