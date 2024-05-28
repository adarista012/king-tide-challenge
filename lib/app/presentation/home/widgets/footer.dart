import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget footer() {
  return Expanded(
    flex: 2,
    child: Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(24.0),
      child: const Text('Antonio Dante Arista Rivas',
          style: TextStyle(color: AppColors.white)),
    ),
  );
}
