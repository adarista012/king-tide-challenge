import 'package:dio/dio.dart';
import 'package:king_tide_challenge/app/app_constants.dart';
import 'package:king_tide_challenge/app/data/source/helpers/generator_img_url.dart';
import 'package:king_tide_challenge/app/data/source/helpers/generator_query_fetch_details.dart';
import 'package:king_tide_challenge/app/data/source/helpers/generator_query_fetch_pokemons.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

class PokemonApi {
  Dio dio = Dio();
  Map<String, int> map = {};

  Future<List<Pokemon>> fetchPokemons(int length) async {
    List<Pokemon> list = [];
    String generation = length < map[AppConstants.GENERATION_I]!.toInt()
        ? AppConstants.GENERATION_I
        : AppConstants.GENERATION_II;
    int maxLength = map[AppConstants.GENERATION_I]!.toInt() +
        map[AppConstants.GENERATION_II]!.toInt();

    try {
      if (length < maxLength) {
        String query = generatorQueryFetchPokemons(generation, length + 1);
        var response = await dio.post(AppConstants.URL, data: {'query': query});
        List data = response.data['data']['gen3_species'];
        list.addAll(
          data.map(
            (e) => Pokemon(
              id: e['id'],
              name: e['name'],
              imageUrl: generatorImgUrl(e['id']),
              generation: generation,
              favorite: false,
            ),
          ),
        );
      }
    } on DioException catch (e) {
      throw Exception(e.message);
    }

    return list;
  }

  Future<List> fetchPokemonDetails(Pokemon pokemon) async {
    List list = [];
    String query = generatorQueryFetchDetail(pokemon.id);
    try {
      var response = await dio.post(AppConstants.URL, data: {'query': query});

      pokemon.habitat = response.data['data']['gen3_species']
          .first['pokemon_v2_pokemonhabitat']['name'];
      pokemon.color = response.data['data']['gen3_species']
          .first['pokemon_v2_pokemoncolor']['name'];
      List abilities = response.data['data']['pokemon_v2_abilityname'];
      List characteristics = response.data['data']['pokemon_v2_characteristic'];

      pokemon.abilities = abilities.map((e) => e['name'].toString()).toList();
      pokemon.characteristics = characteristics
          .map((e) => e['pokemon_v2_characteristicdescriptions']
              .first['description']
              .toString())
          .toList();
    } on DioException catch (e) {
      throw Exception(e.message);
    }
    return list;
  }

  Future fetchGenerations() async {
    String query = AppConstants.QUERY_FETCH_GENERATIONS;
    try {
      var response = await dio.post(AppConstants.URL, data: {'query': query});
      final List list = response.data['data']['generations'];
      for (var i in list) {
        map[i['name']] = i['pokemon_species']['aggregate']['count'];
      }
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }

  int maxLength() {
    return map[AppConstants.GENERATION_I]!.toInt() +
        map[AppConstants.GENERATION_II]!.toInt();
  }
}
