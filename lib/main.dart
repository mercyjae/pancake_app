import 'package:flutter/material.dart';
import 'package:pancakes_app/fruit_app.dart';

void main() {
  runApp(PancakesApp());
}
class PancakesApp extends StatefulWidget {
  const PancakesApp({Key? key}) : super(key: key);

  @override
  _PancakesAppState createState() => _PancakesAppState();
}

class _PancakesAppState extends State<PancakesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,
      home: FruitApp(),);
  }
}
