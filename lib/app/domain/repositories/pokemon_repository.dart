abstract class PokemonRepository {
  Future<List> fetchPokemons();
  Future fetchPokemonDetail(String id);
}
