// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Home on _HomeBase, Store {
  Computed<BaseState>? _$stateComputed;

  @override
  BaseState get state => (_$stateComputed ??=
          Computed<BaseState>(() => super.state, name: '_HomeBase.state'))
      .value;

  late final _$pokemonsFutureAtom =
      Atom(name: '_HomeBase.pokemonsFuture', context: context);

  @override
  ObservableFuture<List<dynamic>>? get pokemonsFuture {
    _$pokemonsFutureAtom.reportRead();
    return super.pokemonsFuture;
  }

  @override
  set pokemonsFuture(ObservableFuture<List<dynamic>>? value) {
    _$pokemonsFutureAtom.reportWrite(value, super.pokemonsFuture, () {
      super.pokemonsFuture = value;
    });
  }

  late final _$getPokemonsAsyncAction =
      AsyncAction('_HomeBase.getPokemons', context: context);

  @override
  Future<dynamic> getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  @override
  String toString() {
    return '''
pokemonsFuture: ${pokemonsFuture},
state: ${state}
    ''';
  }
}
