import 'package:mobx/mobx.dart';

part 'pokemon.g.dart';

class Pokemon extends _Pokemon with _$Pokemon {
  Pokemon(
      {required super.id,
      required super.name,
      required super.imageUrl,
      required super.favorite});
}

abstract class _Pokemon with Store {
  @observable
  int id;

  @observable
  String name;

  @observable
  String imageUrl;

  @observable
  bool favorite = false;

  @observable
  String? habitat;

  @observable
  String? color;

  @observable
  List<String>? abilities;

  @observable
  List<String>? characteristics;

  _Pokemon({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.favorite,
  });
}