import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_navigation.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_id.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_image.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_name.dart';

Widget pokemonItem(String name, int id) {
  return Stack(
    alignment: Alignment.center,
    children: [
      MaterialButton(
        onPressed: () {
          Get.toNamed(Routes.POKEMON_DETAIL);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
        padding: EdgeInsets.zero,
        child: Container(
          width: 220,
          height: 280,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 64.0),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.88),
            borderRadius: BorderRadius.circular(48),
          ),
          margin: const EdgeInsets.all(8.0),
          child: pokemonName(name),
        ),
      ),
      pokemonImage(id),
      pokemonId(id),
    ],
  );
}
