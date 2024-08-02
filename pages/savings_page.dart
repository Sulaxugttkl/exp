import 'package:flutter/material.dart';

const Color blueViolet = Color(0xFF44409E);

class SavingsPage extends StatelessWidget {
  const SavingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Savings'),
        backgroundColor: blueViolet,
      ),
      body: const Center(
        child: Text(
          'Savings Page Content',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
