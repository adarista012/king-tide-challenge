import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app_styles.dart';

Widget header() {
  return Container(
    alignment: Alignment.bottomCenter,
    height: 200,
    margin: const EdgeInsets.only(bottom: 40.0),
    child: Text(
      'King Tide Challenge',
      textAlign: TextAlign.center,
      style: AppStyles.titleLargeWhite.copyWith(
        fontSize: 40.0,
        wordSpacing: 8,
      ),
    ),
  );
}
