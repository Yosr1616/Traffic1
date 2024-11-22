import 'package:flutter/material.dart';

class Interface1 extends StatelessWidget {
  const Interface1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interface 1'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Interface 1!',
          style: TextStyle(
            fontSize: 24, // Font size
            fontWeight: FontWeight.bold, // Added bold styling
            color: Colors.black, // Text color
          ),
        ),
      ),
    );
  }
}
