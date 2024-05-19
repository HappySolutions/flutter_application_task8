import 'package:flutter/material.dart';
import 'package:flutter_application_task8/widgets/my_text_feild.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipping information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyTextFeild(
              name: 'Name',
              icon: Icons.person,
              maxLength: 50,
              obsecureText: false,
              keyboardType: TextInputType.text,
            )
          ],
        ),
      ),
    );
  }
}
