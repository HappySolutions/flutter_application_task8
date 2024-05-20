import 'package:flutter/material.dart';
import 'package:flutter_application_task8/pages/cheese_pizza_page.dart';
import 'package:flutter_application_task8/pages/form_page.dart';
import 'package:flutter_application_task8/pages/fries_page.dart';
import 'package:flutter_application_task8/pages/home_page.dart';
import 'package:flutter_application_task8/pages/vegetable_pizza_page.dart';
import 'package:flutter_application_task8/pages/web_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/homepage':
            return MaterialPageRoute(builder: (_) => const HomePage());
          case '/vegetablePizza':
            return MaterialPageRoute(
                builder: (_) => const VegetablePizzaPage());
          case '/cheesePizza':
            return MaterialPageRoute(builder: (_) => const CheesePizzaPage());
          case '/fries':
            return MaterialPageRoute(builder: (_) => const FriesPage());
          case '/openWebView':
            return MaterialPageRoute(
                builder: (_) => const WebViewPage(
                      urlLink: '',
                    ));
          default:
            return MaterialPageRoute(builder: (_) => const HomePage());
        }
      },
    );
  }
}
/* 
The following assertion was thrown while handling a gesture:
Could not find a generator for route RouteSettings("/openWebView", null) in the _WidgetsAppState.
Make sure your root app widget has provided a way to generate
this route.
Generators for routes are searched for in the following order:
 1. For the "/" route, the "home" property, if non-null, is used.
 2. Otherwise, the "routes" table is used, if it has an entry for the route.
 3. Otherwise, onGenerateRoute is called. It should return a non-null value for any valid route not
handled by "home" and "routes".
 4. Finally if all else fails onUnknownRoute is called.
Unfortunately, onUnknownRoute was not set.
*/