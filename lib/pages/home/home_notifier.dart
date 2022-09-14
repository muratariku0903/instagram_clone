import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';
import 'package:instagram/domain/user/models/user.dart';
import 'package:instagram/domain/post/post_repository.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/pages/app/user_notifier.dart';
import 'package:instagram/pages/home/states/home_state.dart';
import 'package:instagram/widgets/dialog/error_dialog.dart';
import 'package:instagram/common/helper/helpers.dart';

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
        if (!mounted) return;
        final context = appNotifier.navigatorKey.currentContext!;
        const ErrorDialog('画像が送信できませんでした。インターネットが接続されているかご確認ください。')
            .show(context);
      }

      final imagePath = imagePathResult.asValue!.value;

      state = state.copyWith(postImage: imagePath);

      try {
        await postRepository.addPost(
            dateId: dateId,
            postId: postId,
            content: messageController.text,
            postImage: state.postImage,
            user: user);
      } catch (e) {
        dump(e);
      }
    }
  }

  Future<void> setImageFromGallery() async {
    dump('Try get image from gallery');
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      state = state.copyWith(postImageFile: File(pickedFile.path));
    }
  }
}
