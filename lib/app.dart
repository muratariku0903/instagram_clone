import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:instagram/di_container.dart';
import 'package:instagram/domain/user/models/user.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/pages/app/user_notifier.dart';
import 'package:instagram/pages/app/states/user_state.dart';
import 'package:instagram/pages/signin/signin_page.dart';
import 'package:instagram/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...domainProviders,
        ...notifierProviders,
      ],
      child: const _MaterialApp(),
    );
  }
}

class _MaterialApp extends StatelessWidget {
  const _MaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      navigatorKey: context.watch<AppNotifier>().navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const ConfigPage(),
    );
  }
}

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      judgeAuthStatus();
    });
  }

  void judgeAuthStatus() async {
    final userNotifier = context.read<UserNotifier>();
    userNotifier.listenAuthStatus();
    final userState = context.read<UserState>();
    if (userState.userStatus == UserStatus.email) {
      await userNotifier.fetchUser();
    }
  }

  @override
  Widget build(BuildContext context) {
    final userStatus = context.select((UserState value) => value).userStatus;

    return (userStatus == UserStatus.email)
        ? HomePage.wrapped()
        : SignInPage.wrapped();
  }
}
