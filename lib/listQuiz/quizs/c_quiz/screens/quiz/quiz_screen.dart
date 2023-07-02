import 'package:myquizapp/listQuiz/quizs/c_quiz/controllers/c_controller.dart';
import 'package:myquizapp/listQuiz/quizs/dart_quiz/controllers/dart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class CQuizScreen extends StatefulWidget {
  const CQuizScreen({super.key});

  @override
  State<CQuizScreen> createState() => _CQuizScreenState();
}

class _CQuizScreenState extends State<CQuizScreen> {
  @override
  Widget build(BuildContext context) {
    CQuestionController _controller = Get.put(CQuestionController());
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
