import 'package:flutter/material.dart';
import 'package:hacknow_app/pages/shared/auth/login_screen.dart';
import 'package:hacknow_app/pages/shared/auth/sign_up_screen.dart';
import 'package:hacknow_app/pages/shared/welcome_screen.dart';
import 'package:hacknow_app/pages/shared/who_you_are.dart';
import 'package:hacknow_app/pages/users/home.dart';
import 'package:hacknow_app/pages/users/nav_bar.dart';

class Routes {
  static const String onBoardingScreen =
      '/onBoardingScreen'; // Route for onboarding screen
  static const String loginScreen = '/loginScreen'; // Route for login screen
  static const String signupScreen = '/signupScreen'; // Route for login screen
  static const String homeScreen = '/homeScreen'; // Route for login screen
  static const String communityScreen =
      '/communityScreen'; // Route for communityScreen screen
  static const String mainScreen = '/mainScreen'; // Route for login screen
  static const String storeScreen = '/storeScreen'; // Route for login screen
  static const String welcomeScreen =
      '/welcomeScreen'; // Route for login screen
  static const String challengesScreen =
      '/challengesScreen'; // Route for login screen
  static const String chatBotScreen =
      '/chatBotScreen'; // Route for login screen
}

class AppRouters {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const Home());

      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const NavBar());

      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WhoAreYouPage());

      default:
        return null;
    }
  }
}
