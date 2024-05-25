import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

Widget pokemonImage(Pokemon pokemon) {
  return Positioned(
    left: 0,
    top: 0,
    child: Column(
      children: [
        SvgPicture.network(
          pokemon.imageUrl,
          semanticsLabel: pokemon.name,
          height: 220,
          width: 220,
        ),
        Container(
          height: 2,
          width: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
        )
      ],
    ),
  );
}
