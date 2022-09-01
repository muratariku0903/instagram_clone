import 'dart:io';
import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final double radius;
  final File? profileImage;

  const UserProfileImage({
    Key? key,
    required this.radius,
    this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey,
      backgroundImage: profileImage != null ? FileImage(profileImage!) : null,
      child: _noProfileIcon(),
    );
  }

  Icon? _noProfileIcon() {
    if (profileImage == null) {
      return Icon(
        Icons.account_circle,
        color: Colors.grey,
        size: radius * 2,
      );
    }

    return null;
  }
}
