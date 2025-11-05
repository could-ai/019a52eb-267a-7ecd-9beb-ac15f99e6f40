import 'package:flutter/material.dart';
import 'package:couldai_user_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ari's Perfect Tracker",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFF0F5), // Lavender Blush
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFB6C1), // Light Pink
          primary: const Color(0xFFff69b4), // Hot Pink
          secondary: const Color(0xFFE6E6FA), // Lilac
          background: const Color(0xFFFFF0F5), // Lavender Blush
        ),
        cardTheme: const CardTheme(
          color: Color(0xFFFFE4E1), // Misty Rose
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
        useMaterial3: true,
        fontFamily: 'Segoe UI',
      ),
      home: const HomeScreen(),
    );
  }
}
