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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void rollBothDice() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //using flutter outline tab to wrap widget with widget
    return Center(
      child: Row(
        children: [
          //Expanded will expand/resize the child according to available space
          Expanded(
            child: FlatButton(
              //onPress accepts a anonymous function AKA void callback
              onPressed: () {
                setState(() {
                  rollBothDice();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollBothDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   int leftDiceNumber;
//   bool a = true;
//   @override
//   Widget build(BuildContext context) {
//     //using flutter outline tab to wrap widget with widget
//     return Center(
//       child: Row(
//         children: [
//           //Expanded will expand/resize the child according to available space
//           Expanded(
//             child: FlatButton(
//               //onPress accepts a anonymous function AKA void callback
//               onPressed: () {},
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {},
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
