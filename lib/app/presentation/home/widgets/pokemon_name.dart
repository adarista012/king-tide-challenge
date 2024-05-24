import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget pokemonName(String name) {
  return Text(
    name.capitalize!,
    style: const TextStyle(
      color: AppColors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 28.0,
      overflow: TextOverflow.ellipsis,
      letterSpacing: 1.6,
    ),
  );
}
