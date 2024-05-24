import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_item.dart';

Widget pokemonList(List<Pokemon> list) {
  return SizedBox(
    height: 420,
    child: ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) {
        return pokemonItem(list[index]);
      },
    ),
  );
}
