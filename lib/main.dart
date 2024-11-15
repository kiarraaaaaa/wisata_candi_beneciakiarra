import 'package:flutter/material.dart';
import 'package:wisata_candi1/screens/SignInScreen.dart';
import 'package:wisata_candi1/screens/detail_screen.dart';
import 'package:wisata_candi1/screens/profile_screen.dart';
import 'package:wisata_candi1/screens/HomeScreen.dart';
import 'package:wisata_candi1/screens/search_screen.dart';
import 'package:wisata_candi1/screens/SignUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(

          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      // home: DetailScreen(candi: null,),
    );
  }
}
