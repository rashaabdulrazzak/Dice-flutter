import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  // const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;
  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; // number from 1 to 6
      rightDiceNumber = Random().nextInt(6) + 1; // number from 1 to 6

    });
  }
  @override
  Widget build(BuildContext context) {
     return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: (){
                changeDiceFace();
                print('right one printed = $leftDiceNumber');
              },),
          ),),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                changeDiceFace();
                print('right one printed = $rightDiceNumber');
              },),
          ))
        ],
      ),
    );
  }
}


