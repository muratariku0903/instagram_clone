import 'package:instagram/domain/user/models/user.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:instagram/domain/user/user_service.dart';
import 'package:instagram/domain/user/user_repository.dart';
import 'package:instagram/pages/app/states/user_state.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/common/helper/helpers.dart';

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier({
    required this.repository,
    required this.service,
    required this.appNotifier,
  }) : super(const UserState());

  final UserRepository repository;
  final UserService service;
  final AppNotifier appNotifier;

  void listenAuthStatus() {
    final result = service.userId;

    if (result == null) {
      state = state.copyWith(userStatus: UserStatus.none);
      return;
    }

    state = state.copyWith(userStatus: UserStatus.email);
  }

  Future<void> fetchUser() async {
    final uid = service.userId;

    if (uid == null) {
      return;
    }

    final userResult = await repository.fetchUser(uid);

    if (userResult.isError) {
      final context = appNotifier.navigatorKey.currentContext!;
      return;
    }

    final user = userResult.asValue!.value;

    state = state.copyWith(user: user);
    dump('fetched user from firestore : $state)');
  }
}
