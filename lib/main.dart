import 'package:flutter/material.dart';

import 'people.dart';
import 'secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimationApp());
  }
}

class AnimationApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimationApp();
}

class _AnimationApp extends State<AnimationApp> {
  final List<Person> people = [];
  int current = 0;
  Color _weightColor = Colors.blue;
  double _opacity = 1;

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
      appBar: AppBar(
        title: Text('Animation Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: _opacity,
                child: SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('이름: ${people[current].name}'),
                      ),
                      AnimatedContainer(
                        duration: Duration(seconds: 2),
                        curve: Curves.bounceIn,
                        color: Colors.amber,
                        child: Text(
                          '키 ${people[current].height}',
                          textAlign: TextAlign.center,
                        ),
                        width: 50,
                        height: people[current].height,
                      ),
                      AnimatedContainer(
                        duration: Duration(seconds: 2),
                        curve: Curves.easeInCubic,
                        color: _weightColor,
                        child: Text(
                          '몸무게 ${people[current].weight}',
                          textAlign: TextAlign.center,
                        ),
                        width: 50,
                        height: people[current].weight,
                      ),
                      AnimatedContainer(
                        duration: Duration(seconds: 2),
                        curve: Curves.linear,
                        color: Colors.pinkAccent,
                        child: Text(
                          'bmi ${people[current].bmi.toDouble().floor()}',
                          textAlign: TextAlign.center,
                        ),
                        width: 50,
                        height: people[current].bmi,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                  ),
                  height: 200,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (current < people.length - 1) {
                      current += 1;
                      _weightColor =
                          _resolveWeightColor(people[current].weight);
                    }
                  });
                },
                child: Text('다음'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (current > 0) {
                      current -= 1;
                      _weightColor =
                          _resolveWeightColor(people[current].weight);
                    }
                  });
                },
                child: Text('이전'),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _opacity = _opacity == 1 ? 0 : 1;
                  });
                },
                child: Text(_opacity == 1 ? '사라지기' : '나타나기'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      Hero(
                        tag: 'detail',
                        child: Icon(Icons.cake),
                      ),
                      Text('이동하기'),
                    ],
                  ),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }

  Color _resolveWeightColor(double weight) {
    if (weight < 40) {
      return Colors.blueAccent;
    } else if (weight < 60) {
      return Colors.indigo;
    } else if (weight < 80) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}
