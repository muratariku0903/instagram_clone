import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:instagram/pages/app/states/app_state.dart';

class AppNotifier extends StateNotifier<AppState> {
  AppNotifier() : super(const AppState());

  final navigatorKey = GlobalKey<NavigatorState>();

  Future<T?>? pushAndRemoveAll<T extends Object?>(Route<T> newRoute) {
    return navigatorKey.currentState!
        .pushAndRemoveUntil(newRoute, (route) => false);
  }

  Future<T?>? pushReplacement<T extends Object?, To extends Object?>(
      Route<T> newRoute, To? result) {
    return navigatorKey.currentState!
        .pushReplacement<T, To>(newRoute, result: result);
  }
}
