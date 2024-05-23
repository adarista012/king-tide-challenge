import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:king_tide_challenge/app/presentation/splash/splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Splash splash = Splash();
    return Scaffold(
      body: Center(
        child: Observer(
          builder: (context) {
            return Text(splash.title);
          },
        ),
      ),
    );
  }
}
