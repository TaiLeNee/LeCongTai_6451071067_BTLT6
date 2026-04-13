import 'package:flutter/material.dart';
import '../widgets/main_button.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen\n6451071067- Lê Công Tài'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButton(
              title: 'Go to Setting',
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
          ],
        ),
      ),
    );
  }
}