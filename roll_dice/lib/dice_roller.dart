import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRiceDoll = 2;

  rollDice() {
    setState(() {
      currentRiceDoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRiceDoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontFamily: GoogleFonts.bebasNeue(
                  fontWeight: FontWeight.bold,
                ).fontFamily,
              )),
          child: const Text(
            'Roll a Dice',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
