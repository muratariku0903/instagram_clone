// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get comment => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @dateTimeKey
  DateTime? get dateOfComment => throw _privateConstructorUsedError;
  bool get isLinked => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {String comment,
      String uid,
      @dateTimeKey DateTime? dateOfComment,
      bool isLinked,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object? comment = freezed,
    Object? uid = freezed,
    Object? dateOfComment = freezed,
    Object? isLinked = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfComment: dateOfComment == freezed
          ? _value.dateOfComment
          : dateOfComment // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLinked: isLinked == freezed
          ? _value.isLinked
          : isLinked // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String comment,
      String uid,
      @dateTimeKey DateTime? dateOfComment,
      bool isLinked,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, (v) => _then(v as _$_Comment));

  @override
  _$_Comment get _value => super._value as _$_Comment;

  @override
  $Res call({
    Object? comment = freezed,
    Object? uid = freezed,
    Object? dateOfComment = freezed,
    Object? isLinked = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Comment(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfComment: dateOfComment == freezed
          ? _value.dateOfComment
          : dateOfComment // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLinked: isLinked == freezed
          ? _value.isLinked
          : isLinked // ignore: cast_nullable_to_non_nullable
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
class _$_Comment extends _Comment {
  const _$_Comment(
      {this.comment = '',
      this.uid = '',
      @dateTimeKey this.dateOfComment,
      this.isLinked = false,
      this.user})
      : super._();

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final String uid;
  @override
  @dateTimeKey
  final DateTime? dateOfComment;
  @override
  @JsonKey()
  final bool isLinked;
  @override
  final User? user;

  @override
  String toString() {
    return 'Comment(comment: $comment, uid: $uid, dateOfComment: $dateOfComment, isLinked: $isLinked, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.dateOfComment, dateOfComment) &&
            const DeepCollectionEquality().equals(other.isLinked, isLinked) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(dateOfComment),
      const DeepCollectionEquality().hash(isLinked),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment extends Comment {
  const factory _Comment(
      {final String comment,
      final String uid,
      @dateTimeKey final DateTime? dateOfComment,
      final bool isLinked,
      final User? user}) = _$_Comment;
  const _Comment._() : super._();

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String get comment;
  @override
  String get uid;
  @override
  @dateTimeKey
  DateTime? get dateOfComment;
  @override
  bool get isLinked;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
