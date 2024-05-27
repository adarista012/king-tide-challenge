import 'package:get/get.dart';
import 'package:king_tide_challenge/app/data/repositories_impl/firebase_repository_impl.dart';
import 'package:king_tide_challenge/app/data/repositories_impl/pokemon_repository_impl.dart';
import 'package:king_tide_challenge/app/data/source/remote/firebase_source.dart';
import 'package:king_tide_challenge/app/data/source/remote/pokemon_api.dart';
import 'package:king_tide_challenge/app/domain/repositories/firebase_repository.dart';
import 'package:king_tide_challenge/app/presentation/home/home_store.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_detail/pokemon_detail_store.dart';
import 'package:king_tide_challenge/app/presentation/splash/splash_store.dart';

Future<void> injectDependencies() async {
  final firebaseRepository = FirebaseRepositoryImpl(FirebaseSource());
  final PokemonApi pokemonApi = PokemonApi();
  final pokemonRepository = PokemonRepositoryImpl(pokemonApi);

  Get.put<FirebaseRepository>(firebaseRepository);
  Get.lazyPut<SplashStore>(() => SplashStore());
  Get.lazyPut<PokemonDetailStore>(() => PokemonDetailStore(pokemonRepository),
      fenix: true);
  Get.lazyPut<HomeStore>(() => HomeStore(pokemonRepository));
}
