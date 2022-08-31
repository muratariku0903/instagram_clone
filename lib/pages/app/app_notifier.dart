import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:instagram/pages/app/states/user_state.dart';

class AppNotifier extends StateNotifier<UserState> {
  AppNotifier() : super(const UserState());

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
