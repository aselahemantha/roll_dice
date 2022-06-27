import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Roll Dice',
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: const Dicepage(),
        ),
      )
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDice = 1;
  int rightDice = 1;

  void changeDice(){
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  setState(() {
                    changeDice();
                    print('Pressed Left');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  setState((){
                    changeDice();
                    print("Pressed Right");
                    });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$rightDice.png'),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}