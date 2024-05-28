import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/presentation/home/home_screen.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_card.dart';

Widget pokemonsFavoritesList(double width, height) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: homeStore.pokemonsFuture
        .where((p) => p.favorite == true)
        .map((p) => pokemonCard(p, width, height))
        .toList(),
  );
}
