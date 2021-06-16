import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimationApp()
    );
  }
}

class AnimationApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimationApp();
}

class _AnimationApp extends State<AnimationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation Example'),
      ),
      body: Container(),
    );
  }
}