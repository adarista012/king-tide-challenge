import 'package:king_tide_challenge/app/data/source/remote/pokemon_api.dart';
import 'package:king_tide_challenge/app/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonApi _pokemonApi;

  PokemonRepositoryImpl(this._pokemonApi);
  @override
  Future fetchPokemonDetail(String id) {
    // TODO: implement fetchPokemonDetail
    throw UnimplementedError();
  }

  @override
  Future<List> fetchPokemons() async {
    return _pokemonApi.fetchPokemons();
  }
}
