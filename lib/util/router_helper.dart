import 'package:flutter/material.dart';
import 'package:stock_management/presentation/dashboard/screen/dashboard_screen.dart';
import 'package:stock_management/presentation/dashboard/splash/screen/splash_screen.dart';
import 'package:stock_management/presentation/log_in/login_screen.dart';
import 'package:stock_management/presentation/management/screen/management_page.dart';
import 'package:stock_management/presentation/management/screen/management_screen.dart';
import 'package:stock_management/presentation/pick_page/screen/picking_screen.dart';
import 'package:stock_management/presentation/profile/screen/profile_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(
            backgroundImagePath: 'assets/images/logo.png',
          ),
        );
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.otpScreen:
        return MaterialPageRoute(builder: (_) => const DashBoardScreen());
      case AppRoutes.otpLogin:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case AppRoutes.onBoarding:
        return MaterialPageRoute(builder: (_) => const PickingPageScreen());
      case AppRoutes.dashBoard:
        return MaterialPageRoute(builder: (_) => const DashBoardScreen());
      case AppRoutes.profileScreen:
        return MaterialPageRoute(builder: (_) => ManagementScreen());
      case AppRoutes.magaementPage:
        return MaterialPageRoute(builder: (_) => ManagementScreenPage());
      default:
        return MaterialPageRoute(builder: (_) => ManagementScreen());
    }
  }
}
