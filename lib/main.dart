import 'package:flutter/material.dart';
import 'package:flutter_proton_app/firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Config/helper_functions.dart';
import 'Routes/routes.dart';
import 'Screens/screens.dart';
import 'Themes/themes.dart';
import 'providers/active_theme.provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _App();
}

class _App extends ConsumerState<App> {
  bool _isSignedIn = false;
  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeTheme = ref.watch(activeThemeProvider);

    return MaterialApp(
      title: 'PROTON-AI',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      debugShowCheckedModeBanner: false,
      themeMode: activeTheme == Themes.dark ? ThemeMode.dark : ThemeMode.light,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      home: _isSignedIn ? const HomeScreen() : const LoginScreen(),
    );
  }
}
