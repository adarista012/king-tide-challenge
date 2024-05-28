import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/presentation/home/home_screen.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_card.dart';

Widget pokemonsFiltredList(double width, height) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: homeStore.caughtFilter == CaughtFilter.caught &&
            homeStore.filter == FavoriteFilter.all
        ? homeStore.pokemonsFuture
            .where((p) => p.caught > 0)
            .map((p) => pokemonCard(p, width, height))
            .toList()
        : homeStore.filter == FavoriteFilter.favorites &&
                homeStore.caughtFilter == CaughtFilter.all
            ? homeStore.pokemonsFuture
                .where((p) => p.favorite == true)
                .map((p) => pokemonCard(p, width, height))
                .toList()
            : homeStore.caughtFilter == CaughtFilter.caught &&
                    homeStore.filter == FavoriteFilter.favorites
                ? homeStore.pokemonsFuture
                    .where((p) => p.favorite == true && p.caught > 0)
                    .map((p) => pokemonCard(p, width, height))
                    .toList()
                : homeStore.pokemonsFuture
                    .map((p) => pokemonCard(p, width, height))
                    .toList(),
  );
}
