import 'package:flutter/material.dart';
import 'My_Music_Player.dart';
//import 'dart:html';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My_Music_Player",
      home: new My_Music_Player(),
    );
  }
}
