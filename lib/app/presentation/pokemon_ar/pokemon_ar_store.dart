import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'pokemon_ar_store.g.dart';

class PokemonARStore = PokemonARBase with _$PokemonARStore;

enum BaseState { loading, loaded, error }

enum VisibilityFilter { all, favorites }

abstract class PokemonARBase with Store {
  @observable
  ByteData? bytes;

  @observable
  ArCoreImage? image;

  @observable
  ArCoreSphere? sphere;

  @observable
  bool isLoading = false;
  PokemonARBase() {
    _init();
  }

  _init() async {
    isLoading = true;
    // final completer = Completer<ImageInfo>();
    // var img = SvgPicture.network(
    //       "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/dream-world/25.svg",
    //       semanticsLabel: '',
    //       height: 288,
    //       width: 288,
    //     ),
    // img.resolve(const ImageConfiguration()).addListener(
    //     ImageStreamListener((info, _) => completer.complete(info)));
    // final imageInfo = await completer.future;
    // byteData = img.bytesLoader;
    // await imageInfo.image.toByteData(format: ImageByteFormat.png);
    // return byteData?.buffer.asUint8List(),
    // var by = byteData?.buffer.asUint8List(),
    final byteData = (await NetworkAssetBundle(Uri.parse(
                "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/dream-world/25.svg"))
            .load(
                "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/dream-world/25.svg"))
        .buffer
        .asUint8List();
    image = ArCoreImage(bytes: byteData, height: 600, width: 600);

    // bytes = await rootBundle.load('assets/images/earth.jpg');

    // sphere = ArCoreSphere(
    //   materials: [
    //     ArCoreMaterial(
    //         color: Color.fromARGB(120, 66, 134, 244),
    //         textureBytes: bytes!.buffer.asUint8List())
    //   ],
    //   radius: 0.1,
    // );
    isLoading = false;
  }
}
