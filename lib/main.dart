import 'package:flutter/material.dart';
import 'package:musicapp/Instructions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Instructions(),
    );
  }
}
//inspection error using anytype of scroll view to control overflow
