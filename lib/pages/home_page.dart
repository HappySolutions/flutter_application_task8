import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_task8/pages/form_page.dart';
import 'package:flutter_application_task8/pages/web_view_page.dart';
import 'package:flutter_application_task8/widgets/buttons_bar_wid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'WOW Pizza',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const WebViewPage(urlLink: 'www.twitter.com'),
                ),
              );
            },
            icon: Image.asset('assets/icon_twitter.png', color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const FormPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const WebViewPage(urlLink: 'www.facebook.com'),
                ),
              );
            },
            icon: Image.asset('assets/icon_facebook.png', color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const ButtonsBar(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/newPizza.png',
                        fit: BoxFit.cover,
                        height: 500,
                        width: 500,
                      ),
                    ),
                  ),
                  const Text(
                    'Hi, I\'m the Pizza Assistant,\n What can I help you order?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
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
