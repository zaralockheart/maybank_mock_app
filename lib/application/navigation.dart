import 'package:flutter/material.dart';
import 'package:maybank2u/ui/intro/intro.dart';
import 'package:maybank2u/ui/splash/splash.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(
    String routeName, {
    Object arguments,
  }) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> navigateReplace(
      String routeName, {
        Object arguments,
      }) {
    return navigatorKey.currentState.pushReplacementNamed(routeName, arguments: arguments);
  }

  static Route<dynamic> navigate(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute<dynamic>(builder: (BuildContext context) => Intro());
      default:
        // Default Screen
        return MaterialPageRoute<dynamic>(builder: (BuildContext context) => Splash());
    }
  }
}
