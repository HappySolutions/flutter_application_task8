import 'package:flutter/material.dart';

class FriesPage extends StatefulWidget {
  const FriesPage({super.key});

  @override
  State<FriesPage> createState() => _FriesPageState();
}

class _FriesPageState extends State<FriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Fries Pizza',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(child: Text('Hello form Fries page')),
    );
  }
}
