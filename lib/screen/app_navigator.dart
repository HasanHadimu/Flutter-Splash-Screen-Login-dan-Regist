import 'package:flutter/material.dart';

class AppNavigator {
  // Untuk navigasi ke halaman baru tanpa mengganti halaman saat ini
  static void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Untuk mengganti halaman saat ini
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Untuk kembali ke halaman sebelumnya
  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
