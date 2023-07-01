import 'package:flutter/material.dart';

mixin Helper {
  void snackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsetsDirectional.all(20),
        padding: const EdgeInsetsDirectional.all(10),
        dismissDirection: DismissDirection.horizontal,
        content: Text(message, style: const TextStyle(color: Colors.black)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        action: SnackBarAction(
          label: 'ok',
          textColor: Colors.blue,
          onPressed: () {},
        ),
      ),
    );
  }
}
