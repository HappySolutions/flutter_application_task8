import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  String name;
  bool obsecureText = false;
  Color floatinLableColor;
  final String? Function(String? value)? validator;
  final TextEditingController controller;

  MyTextFeild(
      {required this.name,
      required this.obsecureText,
      required this.floatinLableColor,
      required this.validator,
      required this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                floatingLabelStyle: TextStyle(
                  color: floatinLableColor,
                ),
                label: Text(
                  name,
                ),
              ),
              obscureText: obsecureText,
              validator: validator ??
                  (String? value) {
                    if (controller.text.trim().length < 4 ||
                        controller.text.trim().length > 255) {
                      return "It should be 4 to 255 characters long.";
                    }
                    return null;
                  },
            ),
          )
        ],
      ),
    );
  }
}
