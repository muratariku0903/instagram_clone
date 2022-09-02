// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get postImage => throw _privateConstructorUsedError;
  List<User> get likes => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String content,
      String postImage,
      List<User> likes,
      List<Comment> comments,
      bool isLiked,
      bool isSaved,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? postImage = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? isLiked = freezed,
    Object? isSaved = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postImage: postImage == freezed
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<User>,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String content,
      String postImage,
      List<User> likes,
      List<Comment> comments,
      bool isLiked,
      bool isSaved,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, (v) => _then(v as _$_Post));

  @override
  _$_Post get _value => super._value as _$_Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? postImage = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? isLiked = freezed,
    Object? isSaved = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postImage: postImage == freezed
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<User>,
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post extends _Post {
  const _$_Post(
      {this.id = '',
      this.title = '',
      this.content = '',
      this.postImage = '',
      final List<User> likes = const <User>[],
      final List<Comment> comments = const <Comment>[],
      this.isLiked = false,
      this.isSaved = false,
      this.user})
      : _likes = likes,
        _comments = comments,
        super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String postImage;
  final List<User> _likes;
  @override
  @JsonKey()
  List<User> get likes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final bool isSaved;
  @override
  final User? user;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, content: $content, postImage: $postImage, likes: $likes, comments: $comments, isLiked: $isLiked, isSaved: $isSaved, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.postImage, postImage) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked) &&
            const DeepCollectionEquality().equals(other.isSaved, isSaved) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(postImage),
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(isLiked),
      const DeepCollectionEquality().hash(isSaved),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {final String id,
      final String title,
      final String content,
      final String postImage,
      final List<User> likes,
      final List<Comment> comments,
      final bool isLiked,
      final bool isSaved,
      final User? user}) = _$_Post;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get postImage;
  @override
  List<User> get likes;
  @override
  List<Comment> get comments;
  @override
  bool get isLiked;
  @override
  bool get isSaved;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
