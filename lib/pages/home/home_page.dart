import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/domain/post/models/post_list.dart';
import 'package:instagram/domain/post/post_repository.dart';
import 'package:instagram/pages/app/states/user_state.dart';
import 'package:instagram/pages/app/app_notifier.dart';
import 'package:instagram/pages/app/user_notifier.dart';
import 'package:instagram/pages/home/states/home_state.dart';
import 'package:instagram/pages/home/home_notifier.dart';
import 'package:instagram/pages/post/post_page.dart';
import 'package:instagram/pages/home/widgets/post_item.dart';
import 'package:instagram/widgets/appbar/appbar.dart';
import 'package:instagram/common/helper/helpers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<HomeNotifier, HomeState>(
          create: (context) => HomeNotifier(
            postRepository: context.read<PostRepository>(),
            appNotifier: context.read<AppNotifier>(),
            userNotifier: context.read<UserNotifier>(),
          ),
          child: const HomePage(),
        ),
      ],
      child: const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.read<HomeNotifier>();
    final postList = context.watch<PostList>().postList;
    final user = context.select((UserState value) => value).user;
    final state = context.select((HomeState value) => value);
    dump(state);

    return Scaffold(
      appBar: CustomAppBar(
        title: "Instagram",
        iconButton: IconButton(
          icon: const Icon(Icons.add_box_outlined, color: Colors.black),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return PostPage(notifier: notifier, state: state, user: user);
                },
              ),
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, idx) {
          return PostItem(
            post: postList[idx],
            index: idx,
          );
        },
      ),
    );
  }
}
