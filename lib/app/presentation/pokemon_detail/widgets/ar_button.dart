import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_navigation.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

Widget arButton(Pokemon pokemon) {
  return IconButton(
    onPressed: () => Get.toNamed(
      Routes.POKEMON_AR,
      arguments: pokemon,
    ),
    icon: const Icon(
      Icons.view_in_ar,
      size: 40,
    ),
  );
}
