import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_styles.dart';
import 'package:king_tide_challenge/app/presentation/splash/splash.dart';
import 'package:mobx/mobx.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Splash splash = Splash();
  List<ReactionDisposer> _disposers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Text('King Tide', style: AppStyles.titleLargeWhite),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    _disposers = [
      reaction((_) => splash.routeName, (route) => Get.offNamed(route!)),
    ];
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    for (var d in _disposers) {
      d;
    }
    super.dispose();
  }
}
