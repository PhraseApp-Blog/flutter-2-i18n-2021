import 'package:flutter/material.dart';
import 'screens/hero_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heroes of Computer Science',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HeroList(title: 'Heroes of Computer Science'),
    );
  }
}
