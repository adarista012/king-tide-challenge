String generatorQueryFetchPokemons(String generation, int gte) {
  return '''
            query samplePokeAPIquery {
              gen3_species: pokemon_v2_pokemonspecies(
                where: {
                  pokemon_v2_generation: {name: {_eq: "$generation"}, id: {}}, id: {
                     _gte: $gte}},  limit: 10, order_by: {id: asc}
                ) {
                  name
                  id
              }
            }
         ''';
}
