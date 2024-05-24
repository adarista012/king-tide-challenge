import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget pokemonCharecteristicCard(String characteristic) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: AppColors.white, borderRadius: BorderRadius.circular(4.0)),
    margin: const EdgeInsets.all(4.0),
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Text(
      characteristic,
      style:
          const TextStyle(color: AppColors.blue, fontWeight: FontWeight.w600),
    ),
  );
}
