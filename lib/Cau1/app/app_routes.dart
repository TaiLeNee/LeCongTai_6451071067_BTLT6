import 'package:flutter/material.dart';
import '../utils/route_names.dart';
import '../views/home_view.dart';
import '../views/about_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      RouteNames.home: (BuildContext context) {
        return HomeView(username: '',);
      },
      RouteNames.about: (BuildContext context) {
        return AboutView();
      },
    };
  }
}
