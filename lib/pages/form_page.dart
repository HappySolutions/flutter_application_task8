import 'package:flutter/material.dart';
import 'package:flutter_application_task8/pages/home_page.dart';
import 'package:flutter_application_task8/widgets/my_text_feild.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var confPassController = TextEditingController();
  var password = '';

  @override
  void dispose() {
    emailController.dispose;
    nameController.dispose;
    passwordController.dispose;
    confPassController.dispose;
    super.dispose();
  }

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
          child: Column(
            children: [
              const Text(
                'Welcome to WOW Pizza Store',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Please enter your information',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MyTextFeild(
                        name: 'Email',
                        obsecureText: false,
                        floatinLableColor: Colors.orange,
                        validator: (value) {
                          if (value!.isEmpty || !value.trim().contains('@')) {
                            return 'Please Enter valid email address';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        controller: emailController,
                      ),
                      MyTextFeild(
                        name: 'Username',
                        obsecureText: false,
                        floatinLableColor: Colors.black38,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter valid user name';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        controller: nameController,
                      ),
                      MyTextFeild(
                        name: 'Password',
                        obsecureText: true,
                        floatinLableColor: Colors.black38,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter valid password';
                          }
                          setState(() {
                            password = value;
                          });
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        controller: passwordController,
                      ),
                      MyTextFeild(
                        name: 'Confirm Password',
                        obsecureText: true,
                        floatinLableColor: Colors.black38,
                        validator: (value) {
                          if (value!.isEmpty || value! != password) {
                            return 'Please Enter valid confirm password';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        controller: confPassController,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    HomePage(username: nameController.text),
                              ),
                            );
                            emailController.clear();
                            // nameController.clear();
                            passwordController.clear();
                            confPassController.clear();
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
            ],
          ),
        ),
      ),
    );
  }
}
