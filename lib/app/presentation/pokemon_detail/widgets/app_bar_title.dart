import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:king_tide_challenge/app/app_styles.dart';

Widget appBarTitle(String title) {
  return Text(
    title.capitalizeFirst!,
    style: AppStyles.appBarTitle,
  );
}
