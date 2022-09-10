import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:instagram/app.dart';
import 'package:instagram/domain/post/models/comment.dart';

void main() {
  test('user test', () {
    Timestamp now = Timestamp.now();
    Comment comment1 = Comment.fromJson({
      'comment': 'hello',
      'uid': '1234',
      'dateOfComment': now,
      'isLinked': false,
    });
    Comment comment2 = Comment.fromJson({
      'comment': 'hello',
      'uid': '1234',
      'dateOfComment': now,
      'isLinked': false,
    });

    expect(comment1, comment2);
  });
}

class User {
  String name;
  int age;
  User(this.name, this.age);

  static bool isSameUser(User user1, User user2) {
    if (user1.name != user2.name) return false;
    if (user1.age != user2.age) return false;
    return true;
  }
}
