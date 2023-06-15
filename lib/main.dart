import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
   int   BallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print("i have got clicked");
                setState(() {
                  BallNumber = Random().nextInt(5) + 1;
                });
                print( BallNumber);
              },
              child: Image(
                image: AssetImage('images/ball$BallNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
