import 'package:flutter/material.dart';

class ButtonsBar extends StatelessWidget {
  const ButtonsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
              style: const ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color: Colors.orange))),
              onPressed: () {
                Navigator.pushNamed(context, '/vegetablePizza');
              },
              child: const Text(
                'Vegetable Pizza',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              )),
          OutlinedButton(
              style: const ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color: Colors.orange))),
              onPressed: () {
                Navigator.pushNamed(context, '/cheesePizza');
              },
              child: const Text(
                'Cheese Pizza',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              )),
          OutlinedButton(
              style: const ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color: Colors.orange))),
              onPressed: () {
                Navigator.pushNamed(context, '/fries');
              },
              child: const Text(
                'Fries',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
