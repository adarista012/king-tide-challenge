String generatorQueryFetchDetail(int id) {
  return '''
                    query samplePokeAPIquery {
                      gen3_species: pokemon_v2_pokemonspecies(where: {id: {_eq: $id}}) {
                        pokemon_v2_pokemoncolor {
                        
                          name
                        }
                        pokemon_v2_pokemonhabitat {
                          name
                        }
                      }
                      pokemon_v2_abilityname(limit: 10, where: {language_id: {_eq: 9}}) {
                        name
                      }
                      pokemon_v2_characteristic {
                        pokemon_v2_characteristicdescriptions(where: {language_id: {_eq: 9}}, limit: 4) {
                          description
                        }
                      
                      }
                    }
                  ''';
}
