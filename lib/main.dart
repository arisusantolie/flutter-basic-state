import 'package:flutter/material.dart';
import './homeButton.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String _showingText = 'Light On';
  bool _isTvOn = false;

  void _turnOnOffTv() {
    setState(() {
      _isTvOn = _isTvOn ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Assignment"),
        ),
        body: Column(children: [
          result(_isTvOn),
          homeButton(_isTvOn, _turnOnOffTv),
        ]),
      ),
    );
  }
}
