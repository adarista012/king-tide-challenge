import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

Widget pokemonImage(Pokemon pokemon, double height, width) {
  return SvgPicture.network(
    pokemon.imageUrl,
    semanticsLabel: pokemon.name,
    height: height,
    width: width,
  );
}
