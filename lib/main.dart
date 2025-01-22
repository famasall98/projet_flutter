import 'package:flutter/material.dart';
import 'package:projet_flutter/FoodDetail2.dart';
import 'Accueil.dart';
import 'HomeScreen.dart';
import 'FoodDetail1.dart';
import 'ALIfried.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: FoodDetail1(),
     initialRoute: '/',
      routes: {
        '/': (context) => Accueil(),
        'HomeScreen': (context) => HomeScreen(),
        'ALIfried': (context) => ALIfried(),
        'FoodDetail1': (context) => FoodDetail1(),
        'FoodDetail2': (context) => FoodDetail2(),
      },
    );
  }
}
