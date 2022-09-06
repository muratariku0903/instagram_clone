import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/domain/user/user_repository.dart';
import 'package:instagram/domain/user/user_service.dart';
import 'package:instagram/domain/post/models/post_list.dart';
import 'package:instagram/domain/post/post_repository.dart';
import 'package:instagram/pages/app/states/app_state.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/pages/app/states/user_state.dart';
import 'package:instagram/pages/app/user_notifier.dart';
import 'package:instagram/pages/app/post_notifier.dart';

List<SingleChildWidget> get domainProviders {
  return <SingleChildWidget>[
    Provider<UserRepository>(
      create: (_) => UserRepository(),
    ),
    Provider<UserService>(
      create: (_) => UserService(),
    ),
    Provider<PostRepository>(
      create: (_) => PostRepository(),
    ),
  ];
}

List<SingleChildWidget> get notifierProviders {
  return <SingleChildWidget>[
    StateNotifierProvider<AppNotifier, AppState>(
      create: (_) => AppNotifier(),
    ),
    StateNotifierProvider<UserNotifier, UserState>(
      create: (BuildContext context) => UserNotifier(
        appNotifier: context.read<AppNotifier>(),
        repository: context.read<UserRepository>(),
        service: context.read<UserService>(),
      ),
    ),
    StateNotifierProvider<PostNotifier, PostList>(
      create: (context) => PostNotifier(
        appNotifier: context.read<AppNotifier>(),
        postRepository: context.read<PostRepository>(),
      ),
    ),
  ];
}
