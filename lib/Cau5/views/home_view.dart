import 'package:flutter/material.dart';
import 'pick_color_view.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color selectedColor = Colors.grey;

  Future<void> _pickColor(BuildContext context) async {
    final Color? result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PickColorScreen()),
    );

    if (result != null) {
      setState(() {
        selectedColor = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen\n6451071067- Lê Công Tài")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black12),
              ),
              child: const Center(child: Text("Color Box")),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _pickColor(context),
              child: const Text("Pick Color"),
            ),
          ],
        ),
      ),
    );
  }
}