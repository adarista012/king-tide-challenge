import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/presentation/home/home_screen.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';

Widget header() {
  return Expanded(
    flex: 4,
    child: Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              homeStore.filter == VisibilityFilter.favorites
                  ? IconButton(
                      onPressed: homeStore.changeVisibilityFilter,
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 40.0,
                      )

                      // Icon(
                      //   Icons.filter_alt,
                      //   color: AppColors.white,
                      // ),
                      )
                  : IconButton(
                      onPressed: homeStore.changeVisibilityFilter,
                      icon: const Icon(
                        Icons.favorite_border,
                        color: AppColors.white,
                        size: 40.0,
                      )

                      // Icon(
                      //   Icons.filter_alt_off,
                      //   color: AppColors.white,
                      // ),
                      ),
            ],
          ),
          Image.asset('assets/images/pokemon_logo.png'),
        ],
      ),
    ),
  );
}
