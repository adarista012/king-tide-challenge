import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/presentation/splash/splash_store.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashStore splashStore = SplashStore();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(splashStore.image),
          ],
        ),
      ),
    );
  }
}
