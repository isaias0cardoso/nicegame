import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),() {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('lib/assets/image/background.png'),
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Image.asset(
              'lib/assets/image/logo.png',
              width: 250,
            ),
          ),
        ),
      ),
    );
  }
}
