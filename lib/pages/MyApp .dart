import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Menu.dart';
import 'NotFoundPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      // ... other properties ...

      routes: {
        '/Menu': (context) => Menu(), // Replace MenuPage with your actual menu page widget
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => NotFoundPage(), // Replace NotFoundPage with a widget to handle unknown routes
        );
      },

      home: MyHomePage(), // Set your home page if needed
    );
  }
}
