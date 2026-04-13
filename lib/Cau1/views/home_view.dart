import 'package:flutter/material.dart';
import '../widgets/main_button.dart';
import '../utils/route_names.dart';

class HomeView extends StatelessWidget {
  // Send username from input field to the ProfileView
  final String username;

  HomeView({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen\n6451071067- Lê Công Tài'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            MainButton(
              title: 'Go to About',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.about,
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
