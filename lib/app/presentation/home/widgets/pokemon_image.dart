import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget pokemonImage(int id) {
  return Positioned(
    left: 0,
    top: 0,
    child: Column(
      children: [
        SvgPicture.network(
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg',
          semanticsLabel: id.toString(),
          height: 200,
          width: 200,
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
