import 'package:flutter/material.dart';
import 'major.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeCycles(),
    );
  }
}
class LifeCycles extends StatefulWidget {
  @override
  _LifeCyclesState createState() => _LifeCyclesState();
}

class _LifeCyclesState extends State<LifeCycles> {
  @override
  Widget build(BuildContext context) {
    return major();
  }
}
