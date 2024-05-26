import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_navigation.dart';

Widget buttonAR(double width) {
  return Positioned(
    bottom: 20,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: MaterialButton(
        color: Colors.red,
        minWidth: width - 16,
        onPressed: () => Get.toNamed(Routes.POKEMON_AR),
        child: const Row(
          children: [
            Text(
              'AR Experience ',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.view_in_ar,
              color: AppColors.white,
            )
          ],
        ),
      ),
    ),
  );
}
