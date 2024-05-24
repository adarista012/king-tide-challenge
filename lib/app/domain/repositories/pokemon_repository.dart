import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> fetchPokemons();
  Future fetchPokemonDetail(Pokemon pokemon);
}
