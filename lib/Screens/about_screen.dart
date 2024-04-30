import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/about';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const AboutScreen(),
    );
  }

  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
