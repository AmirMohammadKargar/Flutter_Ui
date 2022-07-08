import 'package:coffee_house/pages/home.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee House',
      theme: ThemeData(
        primaryColor: const Color(0xFFF4991A),
        backgroundColor: const Color(0xFFF6F6F6),
        scaffoldBackgroundColor: const Color(0xFFF6F6F6),
        primaryColorDark: const Color(0xFF321412),
        primaryColorLight: const Color(0xFFEAE8E9),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Color(0xFF321412),
          ),
          actionsIconTheme: IconThemeData(
            color: Color(0xFF321412),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
