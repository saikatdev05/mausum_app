import 'package:flutter/material.dart';
import 'package:masum_app_2/Activity/home.dart';
import 'package:masum_app_2/Activity/loading.dart';
import 'package:masum_app_2/Activity/location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/',
      routes: {
        '/': (context) =>
            Loading(), // Set the loading screen as the initial route
        '/home': (context) => Home(),
        // Route for home screen
        '/location': (context) => Location(),
        // Route for location screen
      },
    );
  }
}
