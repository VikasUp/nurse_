import 'package:flutter/material.dart';

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
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          color: Color.fromARGB(255, 209, 254, 241), 
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  widget.backgroundImagePath,
                  height: 100, 
                ),
                SizedBox(height: 16), 
              ],
            ),
          ),
        ),
      );
}