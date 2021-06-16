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
  final List<People> peopleList = [];
  int current = 0;

  @override
  void initState() {
    super.initState();
    peopleList.add(People('스미스', 180, 92));
    peopleList.add(People('메리', 162, 55));
    peopleList.add(People('존', 177, 75));
    peopleList.add(People('바트', 130, 40));
    peopleList.add(People('콘', 194, 140));
    peopleList.add(People('디디', 100, 80));
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