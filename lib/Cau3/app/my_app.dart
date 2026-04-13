import 'package:flutter/material.dart';
import '../app/app_routes.dart';
import '../utils/route_names.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '6451071067 - Lê Công Tài',
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.home,
      routes: AppRoutes.getRoutes(),
    );
  }
}