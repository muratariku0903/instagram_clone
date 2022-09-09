import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:instagram/domain/user/models/user.dart';
import 'package:instagram/domain/user/user_repository.dart';
import 'package:instagram/domain/user/user_service.dart';
import 'package:instagram/pages/signin/states/signin_state.dart';
import 'package:instagram/pages/app/app_notifier.dart';

class SigninNotifier extends StateNotifier<SigninState> {
  SigninNotifier({
    required this.repository,
    required this.service,
    required this.appNotifier,
  }) : super(const SigninState());

  final UserService service;
  final UserRepository repository;
  final AppNotifier appNotifier;

  late final nameController = TextEditingController();
  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  late final bioController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  void selectProfileImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      state = state.copyWith(userImageFile: File(pickedFile.path));
    }
  }

  Future<UserStatus> addUser(String name, String email, String password) async {
    final result = await service.signUpByEmailAndPassword(
        email: email, password: password);
    if (result.isError) {
      print('error!');
      return UserStatus.error;
    }

    final uid = service.userId;
    if (uid == null) {
      return UserStatus.none;
    }

    final addUserResult = await repository.addUser(uid: uid, name: name);
    if (addUserResult.isError) {
      return UserStatus.error;
    }

    return UserStatus.success;
  }

  Future<void> addUserInfo(File? userImageFile, String? message) async {
    final uid = service.userId;
    if (uid == null) {
      return;
    }

    String? userImage;
    if (userImageFile != null) {
      userImage = await saveUserImage(userImageFile, uid);
    }

    final addUserResult = await repository.addUserInfo(
      uid: uid,
      userImage: userImage,
      message: message,
    );

    if (addUserResult.isError) {
      return;
    }

    await repository.fetchUser(uid);
  }

  Future<String> saveUserImage(File file, String uid) async {
    final path = '/user/$uid';

    final result = await repository.addUserImageToStorage(path, file);
    if (result.isError) {
      return '';
    }

    return result.asValue!.value;
  }
}
