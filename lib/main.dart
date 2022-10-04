import 'package:burgeranimation/screens/home.dart';
import 'package:flutter/material.dart';
import './screens/burger.dart';
import './screens/chess.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'GemunuLibre',
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(color: Colors.black,fontFamily: 'GemunuLibre',fontSize: 25),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Home(),
      routes: {
        '/burger' :(context) => Burger(),
        '/chess' : (context) => Chess(),
      },
    );
  }
}
