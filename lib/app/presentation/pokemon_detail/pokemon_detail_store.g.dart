// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonDetailStore on _HomeBase, Store {
  Computed<BaseState>? _$stateComputed;

  @override
  BaseState get state => (_$stateComputed ??=
          Computed<BaseState>(() => super.state, name: '_HomeBase.state'))
      .value;

  late final _$pokemonsFutureAtom =
      Atom(name: '_HomeBase.pokemonsFuture', context: context);

  @override
  ObservableFuture<dynamic>? get pokemonsFuture {
    _$pokemonsFutureAtom.reportRead();
    return super.pokemonsFuture;
  }

  @override
  set pokemonsFuture(ObservableFuture<dynamic>? value) {
    _$pokemonsFutureAtom.reportWrite(value, super.pokemonsFuture, () {
      super.pokemonsFuture = value;
    });
  }

  late final _$pokemonAtom = Atom(name: '_HomeBase.pokemon', context: context);

  @override
  Pokemon get pokemon {
    _$pokemonAtom.reportRead();
    return super.pokemon;
  }

  @override
  set pokemon(Pokemon value) {
    _$pokemonAtom.reportWrite(value, super.pokemon, () {
      super.pokemon = value;
    });
  }

  late final _$getPokemonDetailsAsyncAction =
      AsyncAction('_HomeBase.getPokemonDetails', context: context);

  @override
  Future<dynamic> getPokemonDetails(int id) {
    return _$getPokemonDetailsAsyncAction
        .run(() => super.getPokemonDetails(id));
  }

  late final _$_HomeBaseActionController =
      ActionController(name: '_HomeBase', context: context);

  @override
  void markAsFavorite() {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.markAsFavorite');
    try {
      return super.markAsFavorite();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemonsFuture: ${pokemonsFuture},
pokemon: ${pokemon},
state: ${state}
    ''';
  }
}
