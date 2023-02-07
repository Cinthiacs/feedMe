import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:scoped_model/scoped_model.dart';

import './BackgroundCollectedPage.dart';
import './BackgroundCollectingTask.dart';
import './ChatPage.dart';
import './DiscoveryPage.dart';
import './SelectBondedDevicePage.dart';
import 'Login.dart';
import './Menu.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlutterLogo(
          size: 25,
        ),
        Text("Desenvolvido por:"),
        Text("Cinthia Cavalheiro"),
        Icon(
          Icons.copyright,
        ),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "Login");
          },
          child: Text("Login"),
        ),
      ],
    );
  }
}
