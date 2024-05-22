import 'package:flutter/material.dart';
import 'package:flutter_application_task8/pages/special_order_page.dart';

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
                  side:
                      WidgetStatePropertyAll(BorderSide(color: Colors.orange))),
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
                side: WidgetStatePropertyAll(BorderSide(color: Colors.orange))),
            onPressed: () {
              Navigator.pushNamed(context, '/cheesePizza');
            },
            child: const Text(
              'Cheese Pizza',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ),
          OutlinedButton(
            style: const ButtonStyle(
                side: WidgetStatePropertyAll(BorderSide(color: Colors.orange))),
            onPressed: () {
              Navigator.pushNamed(context, '/fries');
            },
            child: const Text(
              'Fries',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ),
          OutlinedButton(
            style: const ButtonStyle(
                side: WidgetStatePropertyAll(BorderSide(color: Colors.orange))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SpecialOrderPage(),
                ),
              );
            },
            child: const Text(
              'Special Order',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
