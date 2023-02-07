import 'package:flutter/material.dart';
import './MainPage.dart';
import './Login.dart';
import './Menu.dart';

void main() => runApp(new ExampleApplication());

class ExampleApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MainPage(),
      routes: {
        "/": (context) => MainPage(),
        "Login": (context) => Login(),
      },
    );
  }
}
