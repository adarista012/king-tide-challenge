import 'package:dio/dio.dart';
import 'package:king_tide_challenge/app/app_constants.dart';
import 'package:king_tide_challenge/app/data/source/helpers/generator_img_url.dart';
import 'package:king_tide_challenge/app/data/source/helpers/generator_query_fetch_details.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

class PokemonApi {
  Dio dio = Dio();

  Future<List<Pokemon>> fetchPokemons() async {
    List<Pokemon> list = [];
    String query = AppConstants.QUERY_FETCH_POKEMONS;
    try {
      var response = await dio.post(
        AppConstants.URL,
        data: {'query': query},
      );
      List<dynamic> data = response.data['data']['gen3_species'];
      list.addAll(
        data.map(
          (e) => Pokemon(
            id: e['id'],
            name: e['name'],
            imageUrl: generatorImgUrl(e['id']),
            favorite: false,
          ),
        ),
      );
    } on DioException catch (e) {
      throw Exception(e.message);
    }
    return list;
  }

  Future<List> fetchPokemonDetails(Pokemon pokemon) async {
    List list = [];
    String query = generatorQueryFetchDetail(pokemon.id);
    try {
      var response = await dio.post(
        AppConstants.URL,
        data: {'query': query},
      );

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
}
