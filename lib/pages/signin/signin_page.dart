import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/domain/user/models/user.dart';
import 'package:instagram/domain/user/user_repository.dart';
import 'package:instagram/domain/user/user_service.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/pages/signin/states/signin_state.dart';
import 'package:instagram/pages/signin/signin_notifier.dart';
import 'package:instagram/pages/signin/edit_profile_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SigninNotifier, SigninState>(
          create: (BuildContext context) => SigninNotifier(
            repository: context.read<UserRepository>(),
            service: context.read<UserService>(),
            appNotifier: context.read<AppNotifier>(),
          ),
          child: const SignInPage(),
        ),
      ],
      child: const SignInPage(),
    );
  }

  @override
  Widget build(BuildContext context, [bool mounted = true]) {
    final formKey = GlobalKey<FormState>();
    final notifier = context.read<SigninNotifier>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Instagram',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: notifier.nameController,
                      decoration: const InputDecoration(hintText: 'username'),
                      validator: (value) => value!.trim().isEmpty
                          ? 'Please input valid username'
                          : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: notifier.emailController,
                      decoration: const InputDecoration(hintText: 'Email'),
                      validator: (value) => value!.contains('@')
                          ? null
                          : 'Please input valid email',
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Password'),
                      obscureText: true,
                      controller: notifier.passwordController,
                      validator: (value) => value!.length < 6
                          ? 'Please input valid length password'
                          : null,
                    ),
                    const SizedBox(height: 28),
                    ElevatedButton(
                      child: const Text('Sign Up'),
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          final status = await notifier.addUser(
                            notifier.nameController.text,
                            notifier.emailController.text,
                            notifier.passwordController.text,
                          );

                          if (!mounted) return;

                          if (status == UserStatus.success) {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => EditProfilePage.wrapped(),
                              ),
                            );
                          }
                        }
                      },
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
