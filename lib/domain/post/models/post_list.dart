import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/domain/post/models/post.dart';

part 'post_list.freezed.dart';

@freezed
class PostList with _$PostList {
  const factory PostList({
    @Default(<Post>[]) List<Post> postList,
  }) = _PostList;

  const PostList._();
}
