import 'package:flutter/material.dart';
import 'package:nice_game_app/splash.dart';
import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
