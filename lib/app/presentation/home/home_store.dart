import 'package:get/get.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/domain/repositories/pokemon_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore extends _HomeBase with _$HomeStore {
  HomeStore(super.pokemonRepository);
}

enum BaseState { loading, loaded, error }

enum VisibilityFilter { all, favorites }

abstract class _HomeBase with Store {
  final PokemonRepository _pokemonRepository;

  _HomeBase(this._pokemonRepository) {
    getPokemons();
  }

  @observable
  ObservableFuture<List<Pokemon>>? pokemonsFuture;

  @observable
  VisibilityFilter filter = VisibilityFilter.all;

  @computed
  BaseState get state {
    if (pokemonsFuture == null ||
        pokemonsFuture!.status == FutureStatus.rejected) {
      Get.showSnackbar(
        GetSnackBar(message: pokemonsFuture?.error.toString()),
      );
      return BaseState.error;
    }
    return pokemonsFuture?.status == FutureStatus.pending
        ? BaseState.loading
        : BaseState.loaded;
  }

  @action
  Future getPokemons() async {
    pokemonsFuture = ObservableFuture(_pokemonRepository.fetchPokemons());
  }

  @action
  void changeVisibilityFilter() {
    if (filter == VisibilityFilter.all) {
      filter = VisibilityFilter.favorites;
    } else {
      filter = VisibilityFilter.all;
    }
  }
}
