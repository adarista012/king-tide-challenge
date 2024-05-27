import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_navigation.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_id.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_image.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_name.dart';

Widget pokemonItem(Pokemon pokemon) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: 240,
        height: 300,
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(bottom: 64.0),
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.88),
          borderRadius: BorderRadius.circular(48),
        ),
        margin: const EdgeInsets.all(8.0),
        child: pokemonName(pokemon),
      ),
      pokemonImage(pokemon),
      pokemonId(pokemon.id),
      MaterialButton(
        onPressed: () => Get.toNamed(Routes.POKEMON_DETAIL, arguments: pokemon),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
        padding: const EdgeInsets.all(4.0),
        child: const SizedBox(width: 240, height: 300),
      ),
    ],
  );
}
