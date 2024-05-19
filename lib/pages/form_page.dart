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
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyTextFeild(
                name: 'Email',
                maxLength: 50,
                obsecureText: false,
                keyboardType: TextInputType.text,
                floatinLableColor: Colors.orange,
              ),
              MyTextFeild(
                name: 'Username',
                maxLength: 50,
                obsecureText: false,
                keyboardType: TextInputType.text,
                floatinLableColor: Colors.black12,
              ),
              MyTextFeild(
                name: 'Password',
                maxLength: 50,
                obsecureText: true,
                keyboardType: TextInputType.text,
                floatinLableColor: Colors.black26,
              ),
              MyTextFeild(
                name: 'Confirm Password',
                maxLength: 50,
                obsecureText: true,
                keyboardType: TextInputType.text,
                floatinLableColor: Colors.black38,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Sign Up'))
            ],
          ),
        ),
      ),
    );
  }
}
