import 'package:myquizapp/listQuiz/quizs/cpp_quiz/controllers/cpp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class CppQuizScreen extends StatefulWidget {
  const CppQuizScreen({super.key});

  @override
  State<CppQuizScreen> createState() => _CppQuizScreenState();
}

class _CppQuizScreenState extends State<CppQuizScreen> {
  @override
  Widget build(BuildContext context) {
    CppQuestionController _controller = Get.put(CppQuestionController());
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
