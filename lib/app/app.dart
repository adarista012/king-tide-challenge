import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/navigation.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'King Tide Challenge',
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: Routes.SPLASH,
    );
  }
}
