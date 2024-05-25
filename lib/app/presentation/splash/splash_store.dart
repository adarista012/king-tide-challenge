import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_navigation.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = SplashBase with _$SplashStore;

abstract class SplashBase with Store {
  @observable
  String? routeName;

  @observable
  String image = 'assets/images/logo.png';

  SplashBase() {
    _init();
  }

  _init() async {
    routeName = await Future.delayed(
        const Duration(milliseconds: 2124), () => Routes.HOME);
    Get.offAllNamed(routeName!);
  }
}
