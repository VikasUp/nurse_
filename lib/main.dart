import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stock_management/presentation/dashboard/screen/dashboard_screen.dart';
import 'package:stock_management/presentation/dashboard/splash/screen/splash_screen.dart';
import 'package:stock_management/presentation/history/screen/history_screen.dart';
import 'package:stock_management/presentation/management/screen/management_page.dart';
import 'package:stock_management/presentation/management/screen/management_screen.dart';
import 'package:stock_management/presentation/pick_page/screen/picking_screen.dart';
import 'package:stock_management/presentation/profile/profile_history_screen.dart';
import 'package:stock_management/presentation/profile/screen/profile_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 209, 254, 241),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(
              backgroundImagePath: 'assets/images/logo.png',
            ),
        '/home': (context) => const DashBoardScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/pick': (context) => const PickingPageScreen(),
        '/history': (context) => const HistoryScreen(),
        '/management': (context) => ManagementScreen(),
        '/managementPage': (context) => const ManagementScreenPage(),
        '/profilePage': (context) => ProfilePage(),
      },
    );
  }
}
