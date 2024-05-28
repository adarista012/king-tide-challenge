import 'package:king_tide_challenge/app/domain/models/pokemon.dart';
import 'package:king_tide_challenge/app/domain/repositories/pokemon_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore extends _HomeBase with _$HomeStore {
  HomeStore(super.pokemonRepository);
}

enum BaseState { loading, loaded, error }

enum FavoriteFilter { all, favorites }

enum CaughtFilter { all, caught }

abstract class _HomeBase with Store {
  final PokemonRepository _pokemonRepository;

  _HomeBase(this._pokemonRepository) {
    _init();
  }

  @observable
  List<Pokemon> pokemonsFuture = [];

  @observable
  bool isLoading = false;

  @observable
  int length = 0;

  @observable
  int maxLength = 0;

  @observable
  FavoriteFilter filter = FavoriteFilter.all;

  @observable
  CaughtFilter caughtFilter = CaughtFilter.all;

  _init() async {
    isLoading = true;
    await _pokemonRepository.fetchGenerations();
    maxLength = _pokemonRepository.getMaxLength();
    await getPokemons();
    isLoading = false;
  }

  @action
  Future getPokemons() async {
    final List<Pokemon> futureList =
        await _pokemonRepository.fetchPokemons(length);
    pokemonsFuture.addAll(futureList.toList());
    length = pokemonsFuture.length;
  }

  @action
  void changeFavoriteFilter() {
    if (filter == FavoriteFilter.all) {
      filter = FavoriteFilter.favorites;
    } else {
      filter = FavoriteFilter.all;
    }
  }

  @action
  void changeCaughtFilter() {
    if (caughtFilter == CaughtFilter.all) {
      caughtFilter = CaughtFilter.caught;
    } else {
      caughtFilter = CaughtFilter.all;
    }
  }
}
