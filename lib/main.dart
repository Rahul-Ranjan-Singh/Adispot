import 'package:adispot/screens/onboarding_screens/getStarted_screen.dart';
import 'package:flutter/material.dart';

void main() { 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: getStartedScreen(),
      
    );
  }
}



