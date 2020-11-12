import 'package:flutter/material.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = 'Your Name';
  var id = ' Your ID ';
  var description = 'Your Description';
  var webImage = 'https://www.woolha.com/media/2020/03/eevee.png';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(id, name, description, webImage),
    );
  }
}
