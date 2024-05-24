import 'package:king_tide_challenge/app/data/source/remote/firebase_source.dart';
import 'package:king_tide_challenge/app/domain/repositories/firebase_repository.dart';

class FirebaseRepositoryImpl extends FirebaseRepository {
  final FirebaseSource _firebase;
  FirebaseRepositoryImpl(
    this._firebase,
  ) {
    _firebase.initFirebase();
  }
}
