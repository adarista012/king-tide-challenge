// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Splash on SplashBase, Store {
  late final _$routeNameAtom =
      Atom(name: 'SplashBase.routeName', context: context);

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

  late final _$titleAtom = Atom(name: 'SplashBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  @override
  String toString() {
    return '''
routeName: ${routeName},
title: ${title}
    ''';
  }
}
