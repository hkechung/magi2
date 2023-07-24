import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Diagram App'),
        ),
        body: DiagramScreen(),
      ),
    );
  }
}

class DiagramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Access Mode: Superuser (0) | Resolution: Self Destruction | Code: 25A',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 20.0),
          DiagramWidget(),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your functionality for the "Start" button here
                },
                child: Text('Start'),
              ),
              SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Add your functionality for the "Reset" button here
                },
                child: Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DiagramWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 300.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20.0,
            left: 125.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'BALTHASAR-2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 180.0,
            left: 25.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'CASPER-3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 180.0,
            right: 25.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'MELCHIOR-1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: 135.0,
            left: 135.0,
            child: Container(
              width: 80.0,
              height: 40.0,
              //color: Colors.blue,
              child: Center(
                child: Text(
                  'MAGI',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ),
          ),
          Positioned(
            // bottom orange
            top: 200.0,
            left: 130.0,
            child: Container(
              width: 80.0,
              height: 2.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            //Left Orange
            top: 140.0,
            left: 85.0,
            child: Transform.rotate(
              angle: -pi / 4, // -45 degrees in radians
              child: Container(
                width: 80.0,
                height: 2.0,
                color: Colors.orange,
              ),
            ),
          ),
          Positioned(
            //Right Orange
            top: 105.0,
            right: 130.0,
            child: Transform.rotate(
              angle: -205,
              child: Container(
                width: 2.0,
                height: 70.0,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
