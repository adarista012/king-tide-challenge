import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/presentation/pokemon_ar/pokemon_ar_store.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class PokemonARScreen extends StatefulWidget {
  const PokemonARScreen({super.key});

  @override
  State<PokemonARScreen> createState() => _PokemonARScreenState();
}

class _PokemonARScreenState extends State<PokemonARScreen> {
  final PokemonARStore pokemonARStore = Get.find();
  ArCoreController? arCoreController;
  @override
  void dispose() {
    print('**************** Dispose **************');
    Get.delete<PokemonARStore>();
    arCoreController?.dispose();
    print('**************** end Dispose **************');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AR Pokemon'),
      ),
      body: Observer(
        builder: (_) {
          return pokemonARStore.isLoading || pokemonARStore.image == null
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                        child: defaultTargetPlatform == TargetPlatform.iOS
                            ? ARKitSceneView(
                                onARKitViewCreated:
                                    (ARKitController controller) {
                                  final node = ARKitNode(
                                    geometry: ARKitSphere(radius: 0.1),
                                    position: vector.Vector3(0.0, -0.5, -2.0),
                                  );
                                  controller.add(node);
                                },
                              )
                            : ArCoreView(
                                onArCoreViewCreated:
                                    (ArCoreController controller) {
                                  arCoreController = controller;
                                  final node = ArCoreNode(
                                    image: pokemonARStore.image,
                                    position: vector.Vector3(0.0, -0.5, -2.0),
                                  );
                                  arCoreController?.addArCoreNode(node);
                                },
                              ),
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}
