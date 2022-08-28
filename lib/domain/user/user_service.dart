import 'package:async/async.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  final _auth = FirebaseAuth.instance;

  String? get userId => _auth.currentUser?.uid;

  Future<Result<String>> signUpByEmailAndPassword(
      {required String email, required String password}) async {
    late final UserCredential user;

    try {
      user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on Exception catch (e) {
      print(e);
      return Result.error(e);
    }

    return Result.value(user.user!.uid);
  }
}
