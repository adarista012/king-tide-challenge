import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget pokemonName(String name) {
  return Text(
    name.capitalize!,
    style: const TextStyle(
      color: AppColors.yellow,
      fontWeight: FontWeight.w900,
      fontSize: 34.0,
      overflow: TextOverflow.ellipsis,
      letterSpacing: 2.4,
      shadows: [
        Shadow(offset: Offset(-1.5, -1.5), color: AppColors.blue),
        Shadow(offset: Offset(1.5, -1.5), color: AppColors.blue),
        Shadow(offset: Offset(1.5, 1.5), color: AppColors.blue),
        Shadow(offset: Offset(-1.5, 1.5), color: AppColors.blue),
      ],
    ),
  );
}
