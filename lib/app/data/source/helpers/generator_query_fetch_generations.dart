String generatorQueryFetchGenerations() {
  return r'''
                    query samplePokeAPIquery {
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
