// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeBase, Store {
  late final _$pokemonsFutureAtom =
      Atom(name: '_HomeBase.pokemonsFuture', context: context);

  @override
  List<Pokemon> get pokemonsFuture {
    _$pokemonsFutureAtom.reportRead();
    return super.pokemonsFuture;
  }

  @override
  set pokemonsFuture(List<Pokemon> value) {
    _$pokemonsFutureAtom.reportWrite(value, super.pokemonsFuture, () {
      super.pokemonsFuture = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_HomeBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$lengthAtom = Atom(name: '_HomeBase.length', context: context);

  @override
  int get length {
    _$lengthAtom.reportRead();
    return super.length;
  }

  @override
  set length(int value) {
    _$lengthAtom.reportWrite(value, super.length, () {
      super.length = value;
    });
  }

  late final _$filterAtom = Atom(name: '_HomeBase.filter', context: context);

  @override
  VisibilityFilter get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  late final _$getPokemonsAsyncAction =
      AsyncAction('_HomeBase.getPokemons', context: context);

  @override
  Future<dynamic> getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  late final _$_HomeBaseActionController =
      ActionController(name: '_HomeBase', context: context);

  @override
  void changeVisibilityFilter() {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.changeVisibilityFilter');
    try {
      return super.changeVisibilityFilter();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemonsFuture: ${pokemonsFuture},
isLoading: ${isLoading},
length: ${length},
filter: ${filter}
    ''';
  }
}
