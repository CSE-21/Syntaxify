import 'package:flutter/material.dart';
import 'package:syntaxify/screens/home.dart';
import 'package:syntaxify/screens/result.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/result': (context) => Result(),
        }
    );
  }
}

