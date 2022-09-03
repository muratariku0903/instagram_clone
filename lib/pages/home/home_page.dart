import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:instagram/domain/post/models/post_list.dart';
import 'package:instagram/pages/app/states/user_state.dart';
import 'package:instagram/pages/home/states/home_state.dart';
import 'package:instagram/pages/home/home_notifier.dart';
import 'package:instagram/common/constants/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        // StateNotifierProvider<HomeNotifer>(create: ),
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

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyleTheme.textStyleBold,
          textAlign: TextAlign.left,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.add_box_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return Container();
                  // return PostPage(notifier: notifier, state: state, user: user);
                },
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, idx) {
          return Container();
        },
      ),
    );
  }
}
