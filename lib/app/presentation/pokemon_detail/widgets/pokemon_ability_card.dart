import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'dart:math' as math;

Widget pokemonAbilityCard(String ability) {
  return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        ability,
        style: const TextStyle(
            color: AppColors.white, fontWeight: FontWeight.w600),
      ));
}
