// ignore_for_file: non_constant_identifier_names

abstract class AppConstants {
  static String URL = 'https://beta.pokeapi.co/graphql/v1beta';
  static String QUERY_FETCH_POKEMONS = r'''
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
}
