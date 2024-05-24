import 'package:firebase_core/firebase_core.dart';
import 'package:king_tide_challenge/firebase_options.dart';

class FirebaseSource {
  Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
