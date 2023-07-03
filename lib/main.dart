import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_task/home.dart';

void main() {

  runApp(MaterialApp(home:MyApp(),
   debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }
}

