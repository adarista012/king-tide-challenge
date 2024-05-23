import 'package:king_tide_challenge/app/app.dart';
import 'package:mobx/mobx.dart';

import 'package:king_tide_challenge/app/navigation.dart';

part 'splash.g.dart';

class Splash = SplashBase with _$Splash;

abstract class SplashBase with Store {
  @observable
  String? routeName;

  @observable
  String title = 'Splash screen';

  SplashBase() {
    _init();
  }

  _init() async {
    await Future.delayed(const Duration(milliseconds: 2124));
    routeName = Routes.HOME;
    if (routeName != null) {
      navigatorKey.currentState?.pushReplacementNamed(routeName!);
    }
  }
}
