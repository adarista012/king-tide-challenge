// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/presentation/home/home_screen.dart';
import 'package:king_tide_challenge/app/presentation/splash/splash_screen.dart';

abstract class Routes {
  static const HOME = '/home';
  static const SPLASH = '/splash';
  static const POKEMON_DETAIL = '/pokemon-detail';
}

Map<String, Widget Function(BuildContext)> appRoutes = {
  Routes.SPLASH: (_) => const SplashScreen(),
  Routes.HOME: (_) => const HomeScreen(),
};
