import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:instagram/domain/post/models/post_list.dart';
import 'package:instagram/domain/post/post_repository.dart';
import 'package:instagram/domain/post/error/post_error.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/widgets/dialog/error_dialog.dart';
import 'package:instagram/common/helper/helpers.dart';

class PostNotifier extends StateNotifier<PostList> {
  PostNotifier({
    required this.appNotifier,
    required this.postRepository,
  }) : super(const PostList()) {
    fetchPost();
  }

  final AppNotifier appNotifier;
  final PostRepository postRepository;

  Future<void> fetchPost() async {
    final allPostsResult =
        await postRepository.fetchPost(dateId: await Helpers.dateId);

    if (allPostsResult.isError) {
      switch (allPostsResult.asError!.error) {
        case PostError.error:
          final context = appNotifier.navigatorKey.currentContext!;
          const ErrorDialog('投稿の取得に失敗しました').show(context);
          break;

        case PostError.noData:
          break;

        default:
      }

      return;
    }

    final allPosts = allPostsResult.asValue!.value;

    state = state.copyWith(postList: allPosts);
  }
}
