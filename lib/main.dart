import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomPageBackGroundPage(
        curvedShapeColor: Color.fromRGBO(196, 211, 223, 1),
        backColor: Color.fromRGBO(50, 90, 250, 1),
        title: 'EXPENSE PADI',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
