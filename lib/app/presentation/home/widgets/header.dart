import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_constants.dart';
import 'package:king_tide_challenge/app/presentation/home/home_screen.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';

Widget header() {
  return Expanded(
    flex: 4,
    child: Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(
        top: defaultTargetPlatform == TargetPlatform.iOS ? 60 : 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: homeStore.caughtFilter != CaughtFilter.caught
                      ? AppColors.white
                      : AppColors.red,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: homeStore.changeCaughtFilter,
                  icon: Image.network(
                    AppConstants.POKEBALL_URL,
                  ),
                ),
              ),
              homeStore.filter == FavoriteFilter.favorites
                  ? IconButton(
                      onPressed: homeStore.changeFavoriteFilter,
                      icon: const Icon(
                        Icons.favorite,
                        color: AppColors.red,
                        size: 40.0,
                      ))
                  : IconButton(
                      onPressed: homeStore.changeFavoriteFilter,
                      icon: const Icon(
                        Icons.favorite_border,
                        color: AppColors.white,
                        size: 40.0,
                      ),
                    ),
            ],
          ),
          Image.asset('assets/images/pokemon_logo.png'),
        ],
      ),
    ),
  );
}
