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
          child: SingleChildScrollView(
        child: Column(
          children: [
            const ButtonsBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/fries.jpg',
                  fit: BoxFit.cover,
                  height: 300,
                  width: 300,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
