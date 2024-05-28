import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_styles.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/footer.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/header.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/item_loading.dart';
import 'package:king_tide_challenge/app/presentation/home/widgets/pokemon_card.dart';
import 'package:king_tide_challenge/app/presentation/widgets/build_loading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final HomeStore homeStore = Get.find();
final controller = ScrollController();

class _HomeScreenState extends State<HomeScreen> {
  int page = 1;
  bool hasMore = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Observer(
        builder: (_) => homeStore.isLoading
            ? buildLoading()
            : Container(
                decoration: AppStyles.gradientDecoration,
                width: width,
                height: height,
                child: Column(
                  children: [
                    header(homeStore.filter, homeStore.changeVisibilityFilter),
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: homeStore.filter != VisibilityFilter.favorites
                            ? ListView.builder(
                                controller: controller,
                                itemCount: homeStore.length + 1,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) {
                                  return index < homeStore.length
                                      ? pokemonCard(
                                          homeStore.pokemonsFuture[index],
                                          width,
                                          height,
                                        )
                                      : hasMore
                                          ? itemLoading()
                                          : Container();
                                },
                              )
                            : ListView(
                                scrollDirection: Axis.horizontal,
                                children: homeStore.pokemonsFuture
                                    .where((p) => p.favorite == true)
                                    .map((p) => pokemonCard(p, width, height))
                                    .toList(),
                              ),
                      ),
                    ),
                    footer(),
                  ],
                ),
              ),
      ),
    );
  }

  @override
  void initState() {
    controller.addListener(
      () {
        if (controller.position.maxScrollExtent == controller.offset &&
            homeStore.length < homeStore.maxLength) {
          if (mounted) {
            homeStore.getPokemons();
            setState(() {
              page++;
            });
          }
        }
        if (homeStore.length == homeStore.maxLength) {
          if (mounted) {
            homeStore.getPokemons();
            setState(() {
              hasMore = false;
            });
          }
        }
      },
    );
    super.initState();
  }
}
