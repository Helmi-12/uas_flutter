import 'package:flutter/material.dart';
import 'package:percobaan/login_page.dart';
import 'package:percobaan/splash_page.dart';
import 'package:percobaan/beranda_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/beranda': (context) => const BerandaPage(),
      },
    );
  }
}
