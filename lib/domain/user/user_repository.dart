import 'dart:io';
import 'package:async/async.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instagram/domain/user/models/user.dart';

class UserRepository {
  final _db = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

  Future<Result<bool>> addUser(
      {required String uid, required String name}) async {
    final doc = _db.doc('/private/users/$uid/writeOnly/');

    try {
      doc.set({'userId': uid, 'name': name}, SetOptions(merge: true));
    } catch (e) {
      return Result.error(e);
    }

    return Result.value(true);
  }

  Future<Result<bool>> addUserInfo(
      {required String uid, String? userImage, String? message}) async {
    final doc = _db.doc('/private/users/$uid/writeOnly/');

    try {
      doc.set({'userImage': userImage, 'message': message},
          SetOptions(merge: true));
    } catch (e) {
      return Result.error(e);
    }

    return Result.value(true);
  }

  Future<Result<String>> addUserImageToStorage(String path, File file) async {
    late final TaskSnapshot snapshot;

    try {
      snapshot = await _storage.ref(path).putFile(file);
    } on Exception catch (e) {
      Result.error(e);
      print(e);
    }

    String url = await snapshot.ref.getDownloadURL();
    print('In addUserImage, imagePath is : $url');

    return Result.value(url);
  }

  Future<Result<User>> fetchUser(String uid) async {
    DocumentSnapshot snapshot;

    final doc = _db.doc('/private/users/$uid/readOnly/');

    try {
      snapshot = await doc.get();
    } catch (e) {
      print(e);
      return Result.error(e);
    }

    if (!snapshot.exists) {
      return Result.error('no data');
    }

    final data = snapshot.data()! as Map<String, dynamic>;

    return Result.value(User.fromJson(data));
  }
}
