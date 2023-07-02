import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myquizapp/listQuiz/quizs/java_quiz/controllers/java_controller.dart';

import 'components/body.dart';

class JavaQuizScreen extends StatefulWidget {
  const JavaQuizScreen({super.key});

  @override
  State<JavaQuizScreen> createState() => _JavaQuizScreenState();
}

class _JavaQuizScreenState extends State<JavaQuizScreen> {
  @override
  Widget build(BuildContext context) {
    JavaQuestionController _controller = Get.put(JavaQuestionController());
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
