import 'package:flutter/material.dart';
import 'package:king_tide_challenge/app/app.dart';
import 'package:king_tide_challenge/inject_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  runApp(const App());
}
