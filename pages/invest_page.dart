import 'package:flutter/material.dart';

const Color blueViolet = Color(0xFF3A05EA);

class InvestPage extends StatelessWidget {
  const InvestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invest'),
        backgroundColor: blueViolet,
      ),
      body: const Center(
        child: Text(
          'Invest Page Content',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
