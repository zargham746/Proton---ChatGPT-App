import 'package:flutter/material.dart';

import '../Screens/screens.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return HomeScreen.route();
      case '/login':
        return LoginScreen.route();
      case '/register':
        return RegisterScreen.route();
      case '/history':
        return HistoryScreen.route();
      case '/about':
        return AboutScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
