import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/pokemon_detail_store.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/app_bar_title.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/loading_details.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/widgets/pokemon_detail_header.dart';
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
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle(_pokemonStore.pokemon.name),
        centerTitle: true,
        backgroundColor: AppColors.yellow,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.yellow,
        child: Stack(
          children: [
            pokemonDetailHeader(
              _pokemonStore.pokemon,
              _pokemonStore.markAsFavorite,
            ),
            Column(
              children: [
                Expanded(child: Container()),
                pokemonImageLarge(_pokemonStore.pokemon, height, width),
                const SizedBox(height: 8.0),
                Observer(
                  builder: (_) {
                    return _pokemonStore.pokemon.color == null
                        ? loadingDetails()
                        : pokemonDetailsColumn(_pokemonStore.pokemon);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<PokemonDetailStore>();
    super.dispose();
  }
}
