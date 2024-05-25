import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/build_success.dart';
import 'package:king_tide_challenge/app/presentation/widgets/build_error.dart';
import 'package:king_tide_challenge/app/presentation/widgets/build_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = Get.find();
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (homeStore.state == BaseState.error) return buildError();

          if (homeStore.state == BaseState.loading) return buildLoading();

          if (homeStore.state == BaseState.loaded) {
            if (homeStore.filter == VisibilityFilter.favorites) {
              return buildSuccess(
                homeStore.pokemonsFuture!.value!
                    .where((p) => p.favorite == true)
                    .toList(),
                homeStore.filter,
                homeStore.changeVisibilityFilter,
              );
            } else {
              return buildSuccess(
                homeStore.pokemonsFuture!.value!,
                homeStore.filter,
                homeStore.changeVisibilityFilter,
              );
            }
          }
          return buildLoading();
        },
      ),
    );
  }
}
