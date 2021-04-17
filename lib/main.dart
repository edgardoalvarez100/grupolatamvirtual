import 'package:flutter/material.dart';
import 'package:grupolatam/pages/home.dart';
import 'package:grupolatam/pages/login.dart';
import 'package:grupolatam/pages/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grupo Latam Virtual',
      initialRoute: 'home',
      routes: {
        'welcome': (_) => WelcomePage(),
        'login': (_) => LoginPage(),
        'home': (_) => HomePage()
      },
    );
  }
}
