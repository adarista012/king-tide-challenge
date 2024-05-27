import 'package:king_tide_challenge/app/data/source/remote/pokemon_api.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonApi _pokemonApi;

  PokemonRepositoryImpl(this._pokemonApi);
  @override
  Future fetchPokemonDetail(Pokemon pokemon) async =>
      _pokemonApi.fetchPokemonDetails(pokemon);

  @override
  Future<List<Pokemon>> fetchPokemons(int length) async =>
      _pokemonApi.fetchPokemons(length);

  @override
  Future fetchGenerations() async => _pokemonApi.fetchGenerations();

  @override
  int getMaxLength() => _pokemonApi.maxLength();
}
