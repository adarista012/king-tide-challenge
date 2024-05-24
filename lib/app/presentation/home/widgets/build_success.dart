import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_styles.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/footer.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/header.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_list.dart';

Widget buildSuccess(List<Pokemon> list) {
  return Container(
    decoration: AppStyles.gradientDecoration,
    child: Column(
      children: [
        header(),
        pokemonList(list),
        Expanded(child: Container()),
        footer(),
      ],
    ),
  );
}
