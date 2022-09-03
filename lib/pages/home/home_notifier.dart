import 'dart:io';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:instagram/domain/post/post_repository.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/pages/app/user_notifier.dart';
import 'package:instagram/pages/home/states/home_state.dart';
import 'package:instagram/common/helper/helpers.dart';
import 'package:uuid/uuid.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier({
    required this.postRepository,
    required this.appNotifier,
    required this.userNotifier,
  }) : super(const HomeState()) {
    userNotifier.fetchUser();
  }

  final PostRepository postRepository;
  final AppNotifier appNotifier;
  final UserNotifier userNotifier;

  final messageController = TextEditingController();

  Future<void> addPost(User user) async {
    final dateId = await Helpers.dateId;
    final postId = const Uuid().v4();

    if (state.postImageFile != null) {
      final imagePathResult = await postRepository.addPostImageToStorage(
        '/posts/$dateId/$postId',
        state.postImageFile!,
      );

      if (imagePathResult.isError) {
        final context = appNotifier.navigatorKey.currentContext!;
      }
    }
  }
}
