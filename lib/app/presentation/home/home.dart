import 'package:king_tide_challenge/app/domain/repositories/pokemon_repository.dart';
import 'package:mobx/mobx.dart';

part 'home.g.dart';

class Home extends _HomeBase with _$Home {
  Home(super.pokemonRepository);
}

enum BaseState { loading, loaded, error }

abstract class _HomeBase with Store {
  final PokemonRepository _pokemonRepository;

  _HomeBase(this._pokemonRepository) {
    getPokemons();
  }

  @observable
  ObservableFuture<List>? pokemonsFuture;

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
  Future getPokemons() async {
    pokemonsFuture = ObservableFuture(_pokemonRepository.fetchPokemons());
  }
}
