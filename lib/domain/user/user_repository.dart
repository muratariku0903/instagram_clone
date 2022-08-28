import 'package:async/async.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UserRepository {
  final _db = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

  Future<Result<bool>> addUser(
      {required String uid, required String name}) async {
    final doc = _db.doc('/private/users/$uid/writeOnly');

    try {
      doc.set({'userId': uid, 'name': name}, SetOptions(merge: true));
    } catch (e) {
      return Result.error(e);
    }

    return Result.value(true);
  }
}
