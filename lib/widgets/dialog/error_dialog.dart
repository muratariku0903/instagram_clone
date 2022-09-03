import 'package:flutter/material.dart';
import 'package:instagram/widgets/dialog/dialog_base.dart';

class ErrorDialog extends DialogBase<void> {
  const ErrorDialog(this.message) : super();
  final String message;

  @override
  Widget content(BuildContext context) {
    return Text(message);
  }

  @override
  Widget? title(BuildContext context) {
    return const Text(
      'エラー',
      style: TextStyle(color: Colors.red),
    );
  }

  @override
  List<Widget> actions(BuildContext context) {
    return [
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Text(
          '閉じる',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ];
  }
}
