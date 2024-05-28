// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

Widget pokemonImageLarge(Pokemon pokemon, double height, width) {
  final _height = height / 2.8;
  final _width = width / 1.6;
  return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1, end: 0),
      duration: const Duration(milliseconds: 2224),
      builder: (_, d, __) {
        return Column(
          children: [
            const SizedBox(height: 8.0),
            Stack(
              children: [
                SvgPicture.network(
                  pokemon.imageUrl,
                  semanticsLabel: pokemon.name,
                  height: _height + 6,
                  width: _width + 6,
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.2),
                ),
                SvgPicture.network(
                  pokemon.imageUrl,
                  semanticsLabel: pokemon.name,
                  height: _height,
                  width: _width,
                ),
                SvgPicture.network(
                  pokemon.imageUrl,
                  semanticsLabel: pokemon.name,
                  height: _height,
                  width: _width,
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(d),
                ),
              ],
            ),
            Container(
              height: 2,
              width: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 0.8,
                    blurRadius: 11,
                    offset: const Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
            ),
          ],
        );
      });
}
