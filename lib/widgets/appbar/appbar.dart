import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconButton iconButton;
  final Color bgc = Colors.white;
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.iconButton,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      backgroundColor: bgc,
      elevation: 1,
      leading: iconButton,
    );
  }
}
