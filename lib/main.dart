import 'package:flutter/material.dart';
import 'package:nyoba_quiz_app_soalacak/screens/main_menu.dart';
import 'package:nyoba_quiz_app_soalacak/screens/quizz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainMenu(),
    );
  }
}
