import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade400,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text('Dice'),
        ),
        body: Dicepage(),
      ),
    ),
  );
}

// class Dicepage extends StatelessWidget {
//   const Dicepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('left one ');
//               },
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {},
//               child: Image.asset('images/dice2.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber=2;
  int rightDiceNumber=1;
  void changes(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changes();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                   changes();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
