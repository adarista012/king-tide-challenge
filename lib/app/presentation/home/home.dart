import 'package:king_tide_challenge/app/app_navigation.dart';
import 'package:mobx/mobx.dart';

// This is the class used by rest of your codebase
part 'home.g.dart';

class Home = HomeBase with _$Home;

abstract class HomeBase with Store {
  @observable
  String? routeName;

  HomeBase() {
    _init();
  }

  _init() async {
    await Future.delayed(const Duration(microseconds: 2124));
    routeName = Routes.HOME;
  }
}
