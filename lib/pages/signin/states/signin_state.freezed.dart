// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigninState {
  String get userImage => throw _privateConstructorUsedError;
  File? get userImageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res>;
  $Res call({String userImage, File? userImageFile});
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res> implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  final SigninState _value;
  // ignore: unused_field
  final $Res Function(SigninState) _then;

  @override
  $Res call({
    Object? userImage = freezed,
    Object? userImageFile = freezed,
  }) {
    return _then(_value.copyWith(
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String,
      userImageFile: userImageFile == freezed
          ? _value.userImageFile
          : userImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
abstract class _$$_SigninStateCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$_SigninStateCopyWith(
          _$_SigninState value, $Res Function(_$_SigninState) then) =
      __$$_SigninStateCopyWithImpl<$Res>;
  @override
  $Res call({String userImage, File? userImageFile});
}

/// @nodoc
class __$$_SigninStateCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
    implements _$$_SigninStateCopyWith<$Res> {
  __$$_SigninStateCopyWithImpl(
      _$_SigninState _value, $Res Function(_$_SigninState) _then)
      : super(_value, (v) => _then(v as _$_SigninState));

  @override
  _$_SigninState get _value => super._value as _$_SigninState;

  @override
  $Res call({
    Object? userImage = freezed,
    Object? userImageFile = freezed,
  }) {
    return _then(_$_SigninState(
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String,
      userImageFile: userImageFile == freezed
          ? _value.userImageFile
          : userImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_SigninState with DiagnosticableTreeMixin implements _SigninState {
  const _$_SigninState({this.userImage = '', this.userImageFile});

  @override
  @JsonKey()
  final String userImage;
  @override
  final File? userImageFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SigninState(userImage: $userImage, userImageFile: $userImageFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SigninState'))
      ..add(DiagnosticsProperty('userImage', userImage))
      ..add(DiagnosticsProperty('userImageFile', userImageFile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninState &&
            const DeepCollectionEquality().equals(other.userImage, userImage) &&
            const DeepCollectionEquality()
                .equals(other.userImageFile, userImageFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userImage),
      const DeepCollectionEquality().hash(userImageFile));

  @JsonKey(ignore: true)
  @override
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      __$$_SigninStateCopyWithImpl<_$_SigninState>(this, _$identity);
}

abstract class _SigninState implements SigninState {
  const factory _SigninState(
      {final String userImage, final File? userImageFile}) = _$_SigninState;

  @override
  String get userImage;
  @override
  File? get userImageFile;
  @override
  @JsonKey(ignore: true)
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}