import 'package:get/get.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/domain/repositories/pokemon_repository.dart';
import 'package:mobx/mobx.dart';

part 'pokemon_detail_store.g.dart';

class PokemonDetailStore extends _HomeBase with _$PokemonDetailStore {
  PokemonDetailStore(super.pokemonRepository);
}

enum BaseState { loading, loaded, error }

abstract class _HomeBase with Store {
  final PokemonRepository _pokemonRepository;

  _HomeBase(this._pokemonRepository) {
    getPokemonDetails(pokemon.id);
  }

  @observable
  ObservableFuture? pokemonsFuture;

  @observable
  Pokemon pokemon = Get.arguments;

  @computed
  BaseState get state {
    if (pokemonsFuture == null ||
        pokemonsFuture!.status == FutureStatus.rejected) {
      return BaseState.error;
    }
    return pokemonsFuture?.status == FutureStatus.pending
        ? BaseState.loading
        : BaseState.loaded;
  }

  @action
  void markAsFavorite() => pokemon.favorite = !pokemon.favorite;

  @action
  Future getPokemonDetails(int id) async {
    pokemonsFuture =
        ObservableFuture(_pokemonRepository.fetchPokemonDetail(pokemon));
  }
}
