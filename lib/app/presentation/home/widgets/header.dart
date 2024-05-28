import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget header(VisibilityFilter filter, void Function()? onPressed) {
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
              filter == VisibilityFilter.favorites
                  ? IconButton(
                      onPressed: onPressed,
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
                      onPressed: onPressed,
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
