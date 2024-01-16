import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stock_management/presentation/on_boarding_pages.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-screen';
  final String backgroundImagePath;

  const SplashScreen({Key? key, required this.backgroundImagePath})
      : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          child: Center(
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
        ),
      );
}
