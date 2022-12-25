import 'package:flutter/material.dart';
import 'package:mid_quizapp/component/components.dart';
import 'package:mid_quizapp/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashPage(),
        "/welcome-page": (context) => WelcomePageQuiz(),
        "/home-page": (context) => QuizPage(),
        "/menu-quiz": (context) => MenuQuiz(),
      },
    );
  }
}
