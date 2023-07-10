import 'package:buscar_empleo/screens/main_screen.dart';
// import 'package:buscar_empleo/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build( BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Job Finder",
      // home: SplashScreen(),
      home: MainScreen(),
    );
  }
}