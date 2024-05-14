import 'package:flutter/material.dart';

class CheesePizzaPage extends StatefulWidget {
  const CheesePizzaPage({super.key});

  @override
  State<CheesePizzaPage> createState() => _CheesePizzaPageState();
}

class _CheesePizzaPageState extends State<CheesePizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Cheese Pizza',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(child: Text('Hello form Cheese pizza page')),
    );
  }
}
