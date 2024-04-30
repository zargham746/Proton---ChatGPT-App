// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_proton_app/widgets/theme_switcher_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/chats_provider.dart';

import '../services/auth_service.dart';
import '../widgets/chat_item.dart';
import '../widgets/text_and_voice_field.dart';
import 'screens.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () async {
                await authService.signOut();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false);
              },
              icon: const Icon(Icons.logout),
            ),
            const ThemeSwitcherButton(),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Consumer(builder: (context, ref, child) {
                final chats = ref.watch(chatsProvider).reversed.toList();
                return ListView.builder(
                  reverse: true,
                  itemCount: chats.length,
                  itemBuilder: (context, index) => ChatItem(
                    text: chats[index].message,
                    isMe: chats[index].isMe,
                  ),
                );
              }),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextAndVoiceField(),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
