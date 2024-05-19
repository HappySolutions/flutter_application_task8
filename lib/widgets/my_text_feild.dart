import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  String name;
  IconData icon;
  int maxLength;
  bool obsecureText = false;
  TextInputType keyboardType = TextInputType.text;
  MyTextFeild(
      {required this.name,
      required this.icon,
      required this.maxLength,
      required this.obsecureText,
      required this.keyboardType,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(icon),
                label: Text(name),
              ),
              obscureText: obsecureText,
              maxLength: maxLength,
              keyboardType: keyboardType,
            ),
          )
        ],
      ),
    );
  }
}
