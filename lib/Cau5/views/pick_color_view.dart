import 'package:flutter/material.dart';

class PickColorScreen extends StatelessWidget {
  const PickColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [Colors.red, Colors.blue, Colors.green];
    final List<String> colorNames = ["Red", "Blue", "Green"];

    return Scaffold(
      appBar: AppBar(title: const Text("Chọn màu sắc")),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: colors[index]),
            title: Text(colorNames[index]),
            onTap: () {
              Navigator.pop(context, colors[index]);
            },
          );
        },
      ),
    );
  }
}