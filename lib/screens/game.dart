import 'package:flutter/material.dart';
import 'package:nation_guide_etr/components/navigation_drawer.dart';
import 'package:nation_guide_etr/components/quizlist.dart';
import 'package:nation_guide_etr/data/backdata.dart';
import 'package:nation_guide_etr/models/quiz.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ CHALLENGE',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 22,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
      ),
      body: QuizGame(),
    );
  }
}