import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  String name;
  bool obsecureText = false;
  Color floatinLableColor;
  MyTextFeild(
      {required this.name,
      required this.obsecureText,
      required this.floatinLableColor,
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
                floatingLabelStyle: TextStyle(
                  color: floatinLableColor,
                ),
                label: Text(
                  name,
                ),
              ),
              obscureText: obsecureText,
            ),
          )
        ],
      ),
    );
  }
}
