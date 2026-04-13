import 'package:flutter/material.dart';
import '../widgets/main_button.dart';
import '../utils/route_names.dart';
class HomeView extends StatelessWidget {
  // Send username from input field to the ProfileView
  final String username;
  final TextEditingController _nameController = TextEditingController();
  HomeView({required this.username});

  void navigateToProfile(BuildContext context) {
    Navigator.pushNamed(
      context,
      RouteNames.profile,
      arguments: _nameController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen\n6451071067- Lê Công Tài'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Nhập tên của bạn",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Vui lòng nhập tên của bạn';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            MainButton(
              title: 'Go to Profile',
              onPressed: () {
                String name = _nameController.text.trim();
                if (name.isNotEmpty) {
                  navigateToProfile(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Vui lòng nhập tên của bạn')),
                  );
                }
              }
            )
          ],
        ),
      ),
    );
  }
}
