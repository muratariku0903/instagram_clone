import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instagram/firebase_options.dart';
import 'package:instagram/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}
