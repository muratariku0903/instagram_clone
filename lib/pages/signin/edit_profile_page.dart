import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/domain/user/user_repository.dart';
import 'package:instagram/domain/user/user_service.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/pages/app/user_notifier.dart';
import 'package:instagram/pages/home/home_page.dart';
import 'package:instagram/pages/signin/states/signin_state.dart';
import 'package:instagram/pages/signin/signin_notifier.dart';
import 'package:instagram/widgets/profile_image.dart';
import 'package:instagram/widgets/appbar/appbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  // Reactで言うContainerみたいな感じかな？
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
  Widget build(BuildContext context, [bool mounted = true]) {
    final state = context.select((SigninState value) => value);
    final notifier = context.read<SigninNotifier>();
    final userNotifier = context.read<UserNotifier>();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'edit profile',
        iconButton: IconButton(
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
                  TextFormField(
                    controller: notifier.bioController,
                    decoration: const InputDecoration(hintText: 'Bio'),
                    validator: (value) =>
                        value!.trim().isEmpty ? 'Bio cannot be empty.' : null,
                  ),
                  const SizedBox(height: 28.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 1.0,
                      foregroundColor: Theme.of(context).primaryColor,
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      await notifier.addUserInfo(
                        state.userImageFile,
                        notifier.bioController.text,
                      );

                      if (!mounted) return;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage.wrapped(),
                        ),
                      );
                    },
                    child: const Text(
                      'Let\' get started!',
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
