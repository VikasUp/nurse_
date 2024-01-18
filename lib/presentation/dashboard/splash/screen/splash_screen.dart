import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stock_management/presentation/on_boarding_pages.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-screen';
  final String backgroundImagePath;

  const SplashScreen({super.key, required this.backgroundImagePath});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/images/splash_screen.png',
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      );
}
