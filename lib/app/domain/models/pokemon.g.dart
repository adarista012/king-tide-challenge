// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Pokemon on _Pokemon, Store {
  late final _$idAtom = Atom(name: '_Pokemon.id', context: context);

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$nameAtom = Atom(name: '_Pokemon.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$imageUrlAtom = Atom(name: '_Pokemon.imageUrl', context: context);

  @override
  String get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  late final _$favoriteAtom = Atom(name: '_Pokemon.favorite', context: context);

  @override
  bool get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(bool value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  late final _$habitatAtom = Atom(name: '_Pokemon.habitat', context: context);

  @override
  String? get habitat {
    _$habitatAtom.reportRead();
    return super.habitat;
  }

  @override
  set habitat(String? value) {
    _$habitatAtom.reportWrite(value, super.habitat, () {
      super.habitat = value;
    });
  }

  late final _$colorAtom = Atom(name: '_Pokemon.color', context: context);

  @override
  String? get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(String? value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$abilitiesAtom =
      Atom(name: '_Pokemon.abilities', context: context);

  @override
  List<String>? get abilities {
    _$abilitiesAtom.reportRead();
    return super.abilities;
  }

  @override
  set abilities(List<String>? value) {
    _$abilitiesAtom.reportWrite(value, super.abilities, () {
      super.abilities = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
imageUrl: ${imageUrl},
favorite: ${favorite},
habitat: ${habitat},
color: ${color},
abilities: ${abilities}
    ''';
  }
}
