import 'package:flutter/material.dart';
import 'package:flutter_application_task8/widgets/buttons_bar_wid.dart';

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
        foregroundColor: Colors.white,
        title: const Text(
          'Fries',
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
          Image.asset('Vpizza.png'),
        ],
      )),
    );
  }
}
