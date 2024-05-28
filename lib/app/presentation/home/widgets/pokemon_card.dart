import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_navigation.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_item.dart';

Widget pokemonCard(Pokemon pokemon, double width, height) {
  return Container(
    width: width * 0.64,
    margin: const EdgeInsets.all(8.0),
    child: Stack(
      alignment: Alignment.center,
      children: [
        pokemonItem(pokemon, width * 0.30, height * 0.28),
        MaterialButton(
          onPressed: () =>
              Get.toNamed(Routes.POKEMON_DETAIL, arguments: pokemon),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(width: width * 0.64, height: height * 0.5),
        ),
      ],
    ),
  );
}
