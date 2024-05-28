import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_constants.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

Widget pokemonCaught(Pokemon pokemon) {
  return Observer(
    builder: (_) {
      return SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.network(
                AppConstants.POKEBALL_URL,
                height: 44,
                width: 44,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  color: AppColors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  pokemon.caught.toString(),
                  style: const TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
