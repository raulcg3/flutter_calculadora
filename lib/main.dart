import 'package:flutter/material.dart';
import 'package:flutter_calculadora/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
      
    );
  }

}
