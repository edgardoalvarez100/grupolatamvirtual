import 'package:flutter/material.dart';
import 'package:grupolatam/pages/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: WelcomePage(),
        ),
      ),
    );
  }
}
