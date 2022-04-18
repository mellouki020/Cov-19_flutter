import 'package:cov_19/screens/wrapper_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COVID-19 Flutter App',
      theme: ThemeData(fontFamily: 'Kanit'),
      home: const WrapperScreen()
    );
  }
}

