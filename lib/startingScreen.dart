import 'package:flutter/material.dart';
import 'package:task3/homeScreen.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
   void initState(){
     Future.delayed(Duration(seconds: 3),(){
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
             return HomeScreen();
     }));
     super.initState();
   });
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: SafeArea(
          child: Center(
            child: Text('talabat',style: TextStyle(
              color:Colors.white,
              fontSize: 90,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
      ),
    );
  }
}
