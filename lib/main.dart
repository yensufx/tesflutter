import 'package:flutter/material.dart';
import 'package:tesflutter/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Row & Column'),
        ),
        body: LoginScreen()
      ),
    );
  }
}
