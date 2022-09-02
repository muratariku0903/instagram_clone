// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      comment: json['comment'] as String? ?? '',
      uid: json['uid'] as String? ?? '',
      dateOfComment: _dateTimeFromTimestamp(json['dateOfComment']),
      isLinked: json['isLinked'] as bool? ?? false,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'uid': instance.uid,
      'dateOfComment': instance.dateOfComment?.toIso8601String(),
      'isLinked': instance.isLinked,
      'user': instance.user,
    };
