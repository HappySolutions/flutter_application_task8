import 'package:flutter/material.dart';
import 'package:flutter_application_task8/widgets/buttons_bar_wid.dart';

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
        foregroundColor: Colors.white,
        title: const Text(
          'Vegetable Pizza',
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
          Image.asset('assets/Vpizza.png'),
        ],
      )),
    );
  }
}
