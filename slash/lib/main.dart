import 'package:flutter/material.dart';
import 'package:slash/screens/home_screen.dart';


void main() {
  runApp(const SlashApp());
}


class SlashApp extends StatelessWidget {
  const SlashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slash App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}