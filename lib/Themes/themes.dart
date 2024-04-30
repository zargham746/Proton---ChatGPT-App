import 'package:flutter/material.dart';

// PRESTYLED TEMPLATES
// final lightTheme = ThemeData(
//   useMaterial3: true,
//   colorScheme: ThemeData.light().colorScheme.copyWith(
//         primary: Colors.white,
//         onPrimary: Colors.black,
//         secondary: Colors.grey,
//         onSecondary: Colors.black,
//       ),
// );

// final darkTheme = ThemeData.dark().copyWith(
//   useMaterial3: true,
//   colorScheme: ThemeData.dark().colorScheme.copyWith(
//         primary: Colors.white,
//         onPrimary: Colors.white,
//         secondary: Colors.green,
//         onSecondary: Colors.white,
//       ),
// );

ThemeData lightTheme() {
  return ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
    }),
    colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: Colors.white,
          onPrimary: Colors.black,
          secondary: Colors.grey,
          onSecondary: Colors.black,
        ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
    colorScheme: ThemeData.dark().colorScheme.copyWith(
          primary: Colors.white,
          onPrimary: Colors.white,
          secondary: const Color(0xff7c2a8f),
          onSecondary: Colors.white,
        ),
    textTheme: TextTheme(
      titleMedium: const TextStyle(
        color: Colors.white,
        fontFamily: "Poppins",
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
      titleSmall: const TextStyle(
        color: Colors.white,
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Colors.white.withOpacity(0.30),
        fontFamily: "Poppins",
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: const TextStyle(
        color: Colors.white,
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      centerTitle: true,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,
  );
}
