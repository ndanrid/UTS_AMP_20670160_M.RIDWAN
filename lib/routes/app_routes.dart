import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/presentation/landing_page_screen/landing_page_screen.dart';
import 'package:uts_amp_20670160_mridwan/presentation/login_one_screen/login_one_screen.dart';
import 'package:uts_amp_20670160_mridwan/presentation/login_two_screen/login_two_screen.dart';
import 'package:uts_amp_20670160_mridwan/presentation/login_three_screen/login_three_screen.dart';
import 'package:uts_amp_20670160_mridwan/presentation/welcome_screen/welcome_screen.dart';
import 'package:uts_amp_20670160_mridwan/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:uts_amp_20670160_mridwan/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String landingPageScreen = '/landing_page_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String loginThreeScreen = '/login_three_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    landingPageScreen: (context) => LandingPageScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    loginTwoScreen: (context) => LoginTwoScreen(),
    loginThreeScreen: (context) => LoginThreeScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
