import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> fetchPokemons(int length);
  Future fetchPokemonDetail(Pokemon pokemon);
  Future fetchGenerations();
  int getMaxLength();
}
