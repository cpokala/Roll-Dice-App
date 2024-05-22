import 'package:flutter/material.dart';
import 'dart:math'; 

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice-images/dice-images/dice-2.png';
  
  var currentDiceRoll = 2;

  void rollDice() {
    
    setState(() {
    currentDiceRoll = randomizer.nextInt(6) + 1; // to generate a value between 1 and 6, while including 6 too. 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-images/dice-$currentDiceRoll.png',
          width: 200,
        ), // Image.asset
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ), // EdgeInsets.only
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ), // TextStyle
          ),
          child: const Text('Roll Dice'),
        ), // TextButton
      ],
    ); // Column
  }
}
