import 'package:flutter/material.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/domain/user/user_repository.dart';
import 'package:instagram/domain/user/user_service.dart';
import 'package:instagram/pages/app/user_notifier.dart';
import 'package:instagram/pages/signin/states/signin_state.dart';
import 'package:instagram/pages/signin/signin_notifier.dart';
import 'package:instagram/widgets/profile_image.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SigninNotifier, SigninState>(
          create: (context) => SigninNotifier(
            repository: context.read<UserRepository>(),
            service: context.read<UserService>(),
            appNotifier: context.read<AppNotifier>(),
          ),
          child: const EditProfilePage(),
        ),
      ],
      child: const EditProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select((SigninState value) => value);
    final notifier = context.read<SigninNotifier>();
    final userNotifier = context.read<UserNotifier>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'edit profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32.0),
            GestureDetector(
              onTap: () => notifier.selectProfileImage(),
              child: UserProfileImage(
                radius: 80,
                profileImage: state.userImageFile,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(),
                  const SizedBox(height: 28.0),
                  ElevatedButton(
                    onPressed: (() {}),
                    child: const Text(
                      'hello',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
