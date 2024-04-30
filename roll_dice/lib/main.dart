import 'package:flutter/material.dart';
import 'main_class.dart';

void main() {
  runApp(
    const StartScreen()
  );
}

class StartScreen extends StatefulWidget{
  const StartScreen({super.key});
  @override
   State<StartScreen> createState() {
     return _StartScreenState();   
  }
}
class _StartScreenState extends State<StartScreen>{
   var activeScreen = 'main-screen';
 void onClick(){
setState(() {
  activeScreen= 'info-screen';
});     
 }
  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
      home: Scaffold(
        body: MainApp(
         
        ),
      ),
    ); 
  }
}