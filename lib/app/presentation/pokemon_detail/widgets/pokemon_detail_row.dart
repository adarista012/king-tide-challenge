import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget pokemonDetailsRow(String label, string) {
  TextStyle title = const TextStyle(color: AppColors.white);
  TextStyle text =
      const TextStyle(color: AppColors.white, fontWeight: FontWeight.w600);
  return Row(
    // crossAxisAlignment: CrossAxisAlignment.baseline,
    children: [
      Text('$label: ', style: title),
      Text(string, style: text),
    ],
  );
}
