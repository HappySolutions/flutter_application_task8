import 'package:flutter/material.dart';
import 'package:flutter_application_task8/helpers/sql_helper.dart';
import 'package:flutter_application_task8/pages/atc_hotel_page.dart';
import 'package:flutter_application_task8/pages/cheese_pizza_page.dart';
import 'package:flutter_application_task8/pages/fries_page.dart';
import 'package:flutter_application_task8/pages/home_page.dart';
import 'package:flutter_application_task8/pages/rooms_list_page.dart';
import 'package:flutter_application_task8/pages/vegetable_pizza_page.dart';
import 'package:flutter_application_task8/pages/web_view_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var db = SqlHelper();
  db.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RoomsListPage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/homepage':
            return MaterialPageRoute(
                builder: (_) => const HomePage(
                      username: '',
                    ));
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
            return MaterialPageRoute(
                builder: (_) => const HomePage(
                      username: '',
                    ));
        }
      },
    );
  }
}
