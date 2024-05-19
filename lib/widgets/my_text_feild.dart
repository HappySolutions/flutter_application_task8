import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  String name;
  int maxLength;
  bool obsecureText = false;
  Color floatinLableColor;
  TextInputType keyboardType = TextInputType.text;
  MyTextFeild(
      {required this.name,
      required this.maxLength,
      required this.obsecureText,
      required this.keyboardType,
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
              maxLength: maxLength,
              keyboardType: keyboardType,
            ),
          )
        ],
      ),
    );
  }
}
