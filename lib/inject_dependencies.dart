import 'package:get/get.dart';
import 'package:king_tide_challenge/app/data/repositories_impl/firebase_repository_impl.dart';
import 'package:king_tide_challenge/app/data/repositories_impl/pokemon_repository_impl.dart';
import 'package:king_tide_challenge/app/data/source/remote/firebase_source.dart';
import 'package:king_tide_challenge/app/data/source/remote/pokemon_api.dart';
import 'package:king_tide_challenge/app/domain/repositories/firebase_repository.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/pokemon_detail_store.dart';

Future<void> injectDependencies() async {
  Get.put<FirebaseRepository>(FirebaseRepositoryImpl(FirebaseSource()));
  Get.lazyPut<HomeStore>(() => HomeStore(PokemonRepositoryImpl(PokemonApi())));
  Get.lazyPut<PokemonDetailStore>(
    () => PokemonDetailStore(PokemonRepositoryImpl(PokemonApi())),
    fenix: true,
  );
}
