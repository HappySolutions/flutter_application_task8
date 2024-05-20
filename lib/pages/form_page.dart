import 'package:flutter/material.dart';
import 'package:flutter_application_task8/widgets/my_text_feild.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Sign Up Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyTextFeild(
                    name: 'Email',
                    obsecureText: false,
                    floatinLableColor: Colors.orange,
                  ),
                  MyTextFeild(
                    name: 'Username',
                    obsecureText: false,
                    floatinLableColor: Colors.black38,
                  ),
                  MyTextFeild(
                    name: 'Password',
                    obsecureText: true,
                    floatinLableColor: Colors.black38,
                  ),
                  MyTextFeild(
                    name: 'Confirm Password',
                    obsecureText: true,
                    floatinLableColor: Colors.black38,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0))),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, '/homePage');
                      }
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
