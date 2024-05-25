import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_styles.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/pokemon_detail_store.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/app_bar_title.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/button_ar.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/button_favorite.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/loading_details.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/pokemon_details_column.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/pokemon_image_large.dart';

class PokemonDetailScreen extends StatefulWidget {
  const PokemonDetailScreen({super.key});

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  final PokemonDetailStore _pokemonStore = Get.find();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(title: appBarTitle(_pokemonStore.pokemon.name)),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: height,
            child: Column(
              children: [
                Expanded(child: Container()),
                Container(
                  height: height / 1.6,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: AppStyles.gradientDecoration.copyWith(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height / 8),
                      buttonFavorite(
                          _pokemonStore.pokemon, _pokemonStore.markAsFavorite),
                      Observer(
                        builder: (_) {
                          return _pokemonStore.pokemon.color == null
                              ? loadingDetails()
                              : pokemonDetailsColumn(_pokemonStore.pokemon);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          pokemonImageLarge(_pokemonStore.pokemon),
          buttonAR(width),
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<PokemonDetailStore>();
    super.dispose();
  }
}
