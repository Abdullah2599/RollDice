import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});
@override
  State<MainApp> createState() {
    return _MainAppState();    
  }
}
class _MainAppState extends State<MainApp>{
  var activeScreen = 'main-screen';
 void onClick(){
setState(() {
  activeScreen= 'info-screen';
});     
 }
  @override
  Widget build(context) {
    return Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(
            colors: [ Color.fromARGB(255, 33, 150, 243),
          Color.fromARGB(255, 15, 4, 173),],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: activeScreen== 'main-screen' ? MainTheme()
      ),
    );
  }
}


