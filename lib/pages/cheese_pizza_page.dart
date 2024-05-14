import 'package:flutter/material.dart';
import 'package:flutter_application_task8/widgets/buttons_bar_wid.dart';

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
        foregroundColor: Colors.white,
        title: const Text(
          'Cheese Pizza',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          const ButtonsBar(),
          Image.asset('cheesepizza.png'),
        ],
      )),
    );
  }
}
