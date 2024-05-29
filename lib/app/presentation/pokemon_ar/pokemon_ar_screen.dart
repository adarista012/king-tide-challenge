import 'package:ar_core/augmented_reality/augmented_preview.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:king_tide_challenge/app/app_colors.dart';
import 'package:king_tide_challenge/app/app_constants.dart';
import 'package:king_tide_challenge/app/domain/models/pokemon.dart';

class PokemonArScreen extends StatefulWidget {
  const PokemonArScreen({super.key});

  @override
  State<PokemonArScreen> createState() => _PokemonArScreenState();
}

class _PokemonArScreenState extends State<PokemonArScreen> {
  CameraController? controller;
  final Pokemon? pokemon = Get.arguments;
  List<CameraDescription> cameras = [];
  bool loadingCamera = false;
  void loadCamera() async {
    setState(() {
      loadingCamera = true;
    });
    try {
      cameras = await availableCameras();
      controller = CameraController(cameras[0], ResolutionPreset.ultraHigh);
      await controller?.initialize();
      setState(() {
        loadingCamera = false;
      });
    } catch (e) {
      setState(() {
        loadingCamera = false;
      });
      throw Exception(e);
    }
  }

  @override
  void initState() {
    super.initState();
    loadCamera();
  }

  double onchange = 300;
  double xPosition = 0;
  double yPosition = 350;
  bool pokemonCatched = false;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final String url =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${pokemon!.id}.png';
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.yellow),
      body: loadingCamera && pokemon != null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                SizedBox(
                  height: 1000,
                  width: width,
                  child: ArWidget(
                    controller,
                  ),
                ),
                Positioned(
                  top: yPosition,
                  left: xPosition,
                  right: 0,
                  child: GestureDetector(
                    onDoubleTap: () {
                      setState(() {
                        pokemonCatched = true;
                        try {
                          pokemon!.caught = pokemon!.caught + 1;
                        } catch (e) {
                          throw Exception(e);
                        }
                      });
                    },
                    onPanUpdate: (tapInfo) {
                      setState(() {
                        xPosition += tapInfo.delta.dx;
                        yPosition += tapInfo.delta.dy;
                      });
                    },
                    child: Container(
                      height: onchange,
                      alignment: Alignment.center,
                      child: TweenAnimationBuilder<double>(
                        tween: Tween(begin: 1, end: 0),
                        duration: const Duration(milliseconds: 2224),
                        builder: (_, d, __) {
                          return Stack(
                            children: [
                              Image.network(
                                url,
                                color: pokemonCatched
                                    ? Colors.transparent
                                    : Colors.white,
                                height: onchange + 1.6,
                                width: onchange + 1.6,
                              ),
                              pokemonCatched
                                  ? Positioned(
                                      bottom: 0,
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: Image.network(
                                        AppConstants.POKEBALL_URL,
                                        height: 80,
                                        width: 80,
                                      ),
                                    )
                                  : Image.network(
                                      url,
                                      height: onchange,
                                      width: onchange,
                                    ),
                              Image.network(
                                url,
                                color: pokemonCatched
                                    ? Colors.transparent
                                    : Colors.black.withOpacity(d),
                                height: onchange,
                                width: onchange,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
