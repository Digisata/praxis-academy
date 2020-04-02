import 'package:flutter/material.dart';
import 'package:simple_animation_app/pages/pages.dart';

void main() => runApp(SimpleAnimationApp());

class SimpleAnimationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Animation App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
