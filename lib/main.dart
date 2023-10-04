import 'package:flutter/material.dart';
import 'package:food_shazam/screens/home.dart';
import 'package:food_shazam/screens/landing.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    // TextTheme _customTextTheme = GoogleFonts.outfitTextTheme(
    //   const TextTheme(
    //     // Customize different text styles here
    //     headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    //     headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    //     bodyText1: TextStyle(fontSize: 16.0),
    //     bodyText2: TextStyle(fontSize: 14.0),
    //   ),
    // );
    
    return MaterialApp(
      title: 'Food Shazam',
      home: Scaffold(
        body: Center(
            child: HomeScreen(),
        ),
        
      ),
    );
  }
}
