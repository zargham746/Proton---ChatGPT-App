import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  static const String routeName = '/history';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HistoryScreen(),
    );
  }

  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
