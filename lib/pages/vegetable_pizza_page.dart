import 'package:flutter/material.dart';

class VegetablePizzaPage extends StatefulWidget {
  const VegetablePizzaPage({super.key});

  @override
  State<VegetablePizzaPage> createState() => _VegetablePizzaPageState();
}

class _VegetablePizzaPageState extends State<VegetablePizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Vegetable Pizza',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(child: Text('Hello form vegetable pizza page')),
    );
  }
}
