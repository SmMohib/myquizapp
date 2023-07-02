import 'package:myquizapp/listQuiz/quizs/dart_quiz/controllers/dart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class DartQuizScreen extends StatefulWidget {
  const DartQuizScreen({super.key});

  @override
  State<DartQuizScreen> createState() => _DartQuizScreenState();
}

class _DartQuizScreenState extends State<DartQuizScreen> {
  @override
  Widget build(BuildContext context) {
    DartQuestionController _controller = Get.put(DartQuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Color(0xFF0083BE),
        elevation: 0,
        actions: [
          ElevatedButton(
              onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
