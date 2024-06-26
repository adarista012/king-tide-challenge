import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/ar_button.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/button_favorite.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/pokemon_caught.dart';

Widget pokemonDetailHeader(Pokemon pokemon, void Function()? onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            pokemonCaught(pokemon),
            const SizedBox(height: 8.0),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              height: 56,
              width: 56,
              child: buttonFavorite(
                pokemon,
                onPressed,
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              height: 56,
              width: 56,
              child: arButton(pokemon),
            ),
          ],
        ),
      ],
    ),
  );
}
