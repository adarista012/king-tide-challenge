import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

Widget pokemonName(Pokemon pokemon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '${pokemon.name.capitalize!} ',
        style: const TextStyle(
          color: AppColors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          overflow: TextOverflow.ellipsis,
          letterSpacing: 1.6,
        ),
      ),
      Observer(
        builder: (_) {
          return pokemon.favorite
              ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : const Icon(
                  Icons.favorite_border,
                  color: AppColors.blue,
                );
        },
      ),
    ],
  );
}
