import 'package:dio/dio.dart';
import 'package:king_tide_challenge/app/app_constants.dart';

class PokemonApi {
  Dio dio = Dio();
  Future<List> fetchPokemons() async {
    List list = [];
    String query = r'''
                    query samplePokeAPIquery {
                      gen3_species: pokemon_v2_pokemonspecies(
                        limit: 27, 
                        order_by: {id: asc}
                      ) {
                        name
                        id
                      }
                      generations: pokemon_v2_generation {
                        name
                        pokemon_species: pokemon_v2_pokemonspecies_aggregate {
                          aggregate {
                            count
                          }
                        }
                      }
                    }
                  ''';
    try {
      var response = await dio.post(
        AppConstants.URL,
        data: {'query': query},
      );
      List<dynamic> data = response.data['data']['gen3_species'];
      list.addAll(data.map((e) => e));
    } on DioException catch (e) {
      throw Exception(e.message);
    }
    return list;
  }
}
