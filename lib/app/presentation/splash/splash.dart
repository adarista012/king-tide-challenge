import 'package:king_tide_challenge/app/app_navigation.dart';
import 'package:mobx/mobx.dart';

part 'splash.g.dart';

class Splash = SplashBase with _$Splash;

abstract class SplashBase with Store {
  @observable
  String? routeName;

  SplashBase() {
    _init();
  }

  _init() async {
    routeName = await Future.delayed(
        const Duration(milliseconds: 2124), () => Routes.HOME);
  }
}
