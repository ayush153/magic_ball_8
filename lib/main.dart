import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("ASK ME ANYTHING!")),
          titleTextStyle: TextStyle(
          color: Colors.pinkAccent,
          fontWeight: FontWeight.bold,
            fontSize: 30
    ),
      ),

      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}
class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(5) + 1;

            });
            print('Ball No: $ballNumber');
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
  }