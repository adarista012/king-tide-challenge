import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/pokemon_ability_card.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/pokemon_characteristic_card.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/pokemon_detail_row.dart';

Widget pokemonDetailsColumn(Pokemon pokemon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        pokemonDetailsRow('POKEMON ID', "# ${pokemon.id.toString()}"),
        pokemonDetailsRow('POKEMON GENERATION', pokemon.generation),
        pokemonDetailsRow('POKEMON COLOR', pokemon.color!.capitalize!),
        pokemonDetailsRow('POKEMON HABITAT', pokemon.habitat!.capitalize!),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'POKEMON ABILITIES: ',
              style: TextStyle(
                color: AppColors.brown,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 40.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: pokemon.abilities!
                    .map((e) => pokemonAbilityCard(e))
                    .toList(),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'POKEMON CHARACTERISTICS: ',
              style: TextStyle(
                  color: AppColors.brown, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: pokemon.characteristics!
                    .map((e) => pokemonCharecteristicCard(e))
                    .toList(),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
