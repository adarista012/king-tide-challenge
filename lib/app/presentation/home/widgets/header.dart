import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_styles.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget header(VisibilityFilter filter, void Function()? onPressed) {
  return Container(
    alignment: Alignment.bottomCenter,
    height: 234,
    margin: const EdgeInsets.only(bottom: 40.0),
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
                      Icons.filter_alt,
                      color: AppColors.white,
                    ),
                  )
                : IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.filter_alt_off,
                      color: AppColors.white,
                    ),
                  ),
          ],
        ),
        Text(
          'King Tide Challenge',
          textAlign: TextAlign.center,
          style: AppStyles.titleLargeWhite.copyWith(
            fontSize: 40.0,
            wordSpacing: 8,
          ),
        ),
      ],
    ),
  );
}
