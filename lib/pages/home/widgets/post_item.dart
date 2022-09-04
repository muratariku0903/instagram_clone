import 'package:flutter/material.dart';
import 'package:instagram/domain/post/models/post.dart';
import 'package:instagram/common/constants/theme.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
    required this.post,
    required this.index,
  }) : super(key: key);

  final Post post;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(5),
          child: Row(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(post.user!.userImage),
                    ),
                  ),
                  Text(post.user!.message),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        Container(
          constraints: const BoxConstraints.expand(height: 1),
          color: Colors.grey,
        ),
        Container(
          constraints: const BoxConstraints(maxHeight: 282),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(post.user!.userImage),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  alignment: const Alignment(0, 0),
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      size: 30,
                      color: post.isLiked ? Colors.red : Colors.black,
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite),
                      color: post.isLiked ? Colors.red : Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
                Stack(
                  alignment: const Alignment(0, 0),
                  children: <Widget>[
                    const Icon(
                      Icons.send,
                      size: 30,
                      color: Colors.black,
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
                      color: Colors.white,
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        TextButton(
          child: Text(
            '${post.likes.length.toString()} likes',
            style: TextStyleTheme.textStyleBold,
          ),
          onPressed: () {},
        ),
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 15, right: 10),
              child: Text(
                post.user!.name,
                style: TextStyleTheme.textStyleBold,
              ),
            ),
            Text(
              post.content,
              style: TextStyleTheme.textStyle,
            )
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View all ${post.comments.length.toString()} comments',
            style: TextStyleTheme.textStyleLightGrey,
          ),
        )
      ],
    );
  }
}
