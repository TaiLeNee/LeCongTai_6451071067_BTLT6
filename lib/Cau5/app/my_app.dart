import 'package:btlt6/Cau3/views/home_view.dart';
import 'package:flutter/material.dart';
import '../views/home_view.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}