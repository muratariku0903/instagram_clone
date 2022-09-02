import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        // StateNotifierProvider<HomeNotifer>(create: ),
      ],
      child: const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
