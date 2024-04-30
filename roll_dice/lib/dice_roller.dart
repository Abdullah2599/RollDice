import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roll_dice/main_class.dart';
const  mainapp= MainApp();
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
        OutlinedButton.icon(onPressed: Info(), icon: icon, label: label);
      ],
      
    );
  }
}

class Info extends StatefulWidget{
  const Info({super.key});
  @override
  State<Info> createState() {
         return _InfoState(); 
  }
}
class _InfoState extends State<Info>{



  @override
  Widget build(BuildContext context) {
      return SizedBox(
        child: ,
      );
   
  }
}

