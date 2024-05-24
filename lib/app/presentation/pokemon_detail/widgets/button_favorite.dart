import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

Widget buttonFavorite(Pokemon pokemon, Function()? onPressed) {
  return Observer(
    builder: (_) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: pokemon.favorite
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 40.0,
                  )
                : const Icon(
                    Icons.favorite_border,
                    color: AppColors.white,
                    size: 40.0,
                  ),
          ),
        ],
      );
    },
  );
}
