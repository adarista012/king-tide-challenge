import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_favorite_icon.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_image.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_name.dart';

Widget pokemonItem(Pokemon pokemon, double width, height) {
  return Positioned(
    top: 24,
    left: 0,
    right: 0,
    child: Column(
      children: [
        pokemonImage(pokemon, height, width),
        const SizedBox(height: 8),
        Container(
          height: 2,
          width: 116,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        pokemonName(pokemon.name),
        pokemonFavoriteIcon(pokemon),
      ],
    ),
  );
}
