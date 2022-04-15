import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo,
        ),
        body: game(),
        backgroundColor: Colors.blueAccent,
      ),
    ),
  );
}

class game extends StatefulWidget {
  const game({Key? key}) : super(key: key);

  @override
  _gameState createState() => _gameState();
}

class _gameState extends State<game> {
  int ballno=1;
  void changeBall(){
    setState(() {
      Random random = new Random();
      ballno=random.nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeBall();
              },
              child: Container(

                  child: Image.asset('images/ball$ballno.png')),
            ),
          )
        ],
      ),
    );
  }
}
