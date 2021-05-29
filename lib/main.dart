import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_69_calculator/calculation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FLAMES",
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String firstname;
  String secondname;
  int score;

  void lovescore() {
    score = calculation(firstName: firstname, secondName: secondname);
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ScorePage(score: score),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLAMES'),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: 'lovegif',
              child: Image(
                image: AssetImage('assets/images/logo.gif'),
              ),
            ),
          )),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) {
                firstname = value;
              },
              decoration: InputDecoration(
                  hintText: 'Enter Your First Name',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) {
                secondname = value;
              },
              decoration: InputDecoration(
                  hintText: 'Enter your parterner\'s name',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  )),
            ),
          ),
          RaisedButton(
            onPressed: () {
              lovescore();
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'CALCULATE',
                style: TextStyle( fontSize: 25, color: Colors.white),
              ),
            ),
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}

class ScorePage extends StatelessWidget {
  final int score;

  const ScorePage({
    Key key,
    @required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Hero(
              tag: 'lovegif',
              child: Image(
                image: AssetImage('assets/images/logo.gif'),
              ),
            ),
          )),
          Text(
            'Your Score is $score',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
