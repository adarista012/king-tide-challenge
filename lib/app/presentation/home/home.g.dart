// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Home on HomeBase, Store {
  late final _$routeNameAtom =
      Atom(name: 'HomeBase.routeName', context: context);

  @override
  String? get routeName {
    _$routeNameAtom.reportRead();
    return super.routeName;
  }

  @override
  set routeName(String? value) {
    _$routeNameAtom.reportWrite(value, super.routeName, () {
      super.routeName = value;
    });
  }

  @override
  String toString() {
    return '''
routeName: ${routeName}
    ''';
  }
}
