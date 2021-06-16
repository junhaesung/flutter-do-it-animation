import 'package:flutter/material.dart';

import 'people.dart';

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
  final List<Person> people = [];
  int current = 0;

  @override
  void initState() {
    super.initState();
    people.add(Person('스미스', 180, 92));
    people.add(Person('메리', 162, 55));
    people.add(Person('존', 177, 75));
    people.add(Person('바트', 130, 40));
    people.add(Person('콘', 194, 140));
    people.add(Person('디디', 100, 80));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation Example'),
      ),
      body: Container(),
    );
  }
}