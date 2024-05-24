// ignore_for_file: avoid_function_literals_in_foreach_calls
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/presentation/home/home.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/build_success.dart';
import 'package:king_tide_challenge/app/presentation/widgets/build_error.dart';
import 'package:king_tide_challenge/app/presentation/widgets/build_loading.dart';
import 'package:mobx/mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Home _home = Get.find<Home>();
  List<ReactionDisposer> _disposers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          switch (_home.state) {
            case BaseState.error:
              return buildError();
            case BaseState.loading:
              return buildLoading();
            case BaseState.loaded:
              return buildSuccess(_home.pokemonsFuture!.value!);
          }
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _disposers = [
      when(
        (_) => _home.pokemonsFuture?.status == FutureStatus.rejected,
        () => Get.showSnackbar(
          GetSnackBar(message: _home.pokemonsFuture?.error.toString()),
        ),
      ),
    ];
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d);
    super.dispose();
  }
}
