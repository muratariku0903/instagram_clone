import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({
    @Default('') String userImage,
    File? userImageFile,
  }) = _SigninState;
}
