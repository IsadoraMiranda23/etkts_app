
import 'package:flutter/material.dart';

class SnackbarService {
  static void showEmConstrucao(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Está em construção!"),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 1),
      ),
    );
  }
}