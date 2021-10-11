import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'body.dart';
import 'appBar.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (MyApp()),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //int _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(),
      body: Body(),

    );
  }
}

