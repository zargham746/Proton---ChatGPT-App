import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/active_theme.provider.dart';
import '../services/theme_switch.dart';

class ThemeSwitcherButton extends StatelessWidget {
  const ThemeSwitcherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer(
          builder: (context, ref, child) => Icon(
            ref.watch(activeThemeProvider) == Themes.dark
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
        ),
        const SizedBox(width: 8),
        const ThemeSwitch()
      ],
    );
  }
}
