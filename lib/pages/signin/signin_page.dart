import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/domain/user/user_repository.dart';
import 'package:instagram/domain/user/user_service.dart';
import 'package:instagram/pages/signin/states/signin_state.dart';
import 'package:instagram/pages/signin/signin_notifier.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SigninNotifier, SigninState>(
          create: (context) => SigninNotifier(
            repository: context.read<UserRepository>(),
            service: context.read<UserService>(),
            
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

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
                      decoration: const InputDecoration(hintText: 'username'),
                      validator: (value) => value!.trim().isEmpty
                          ? 'Please input valid username'
                          : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Email'),
                      validator: (value) => value!.contains('@')
                          ? null
                          : 'Please input valid email',
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Password'),
                      obscureText: true,
                      validator: (value) => value!.length < 6
                          ? 'Please input valid length password'
                          : null,
                    ),
                    const SizedBox(height: 28),
                    ElevatedButton(
                      child: const Text('Sign Up'),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          // final status =
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
