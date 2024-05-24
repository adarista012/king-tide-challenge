import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';

Widget pokemonId(int id) {
  return Positioned(
    bottom: 32,
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.blue,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.purpleAccent,
          width: 3.2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1.4,
            offset: Offset.zero, // changes position of shadow
          ),
        ],
      ),
      height: 80,
      width: 80,
      child: Text(
        id.toString(),
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 32.0,
        ),
      ),
    ),
  );
}
