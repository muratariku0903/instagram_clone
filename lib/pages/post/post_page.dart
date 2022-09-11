import 'package:flutter/material.dart';
import 'package:instagram/domain/user/models/user.dart';
import 'package:instagram/pages/home/states/home_state.dart';
import 'package:instagram/pages/home/home_notifier.dart';
import 'package:instagram/widgets/text_field/post_text_field.dart';
import 'package:instagram/widgets/appbar/appbar.dart';

class PostPage extends StatelessWidget {
  const PostPage({
    Key? key,
    required this.notifier,
    required this.state,
    required this.user,
  }) : super(key: key);

  final HomeNotifier notifier;
  final HomeState state;
  final User user;

  @override
  Widget build(BuildContext context, [bool mounted = true]) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Instagram',
        iconButton: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () => notifier.setImageFromGallery(),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.2,
                color: Colors.grey[200],
                child: (state.postImageFile == null)
                    ? const Icon(Icons.image, color: Colors.grey, size: 120.0)
                    : Image.file(state.postImageFile!, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: PostTextField(
                hintText: 'message',
                controller: notifier.messageController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 1.0,
                  foregroundColor: Theme.of(context).primaryColor,
                  textStyle: const TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  await notifier.addPost(user);
                  if (!mounted) return;
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'share',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
