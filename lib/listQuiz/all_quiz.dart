import 'package:myquizapp/listQuiz/quizs/c_quiz/screens/welcome/c_screen.dart';
import 'package:myquizapp/listQuiz/quizs/cpp_quiz/screens/welcome/cpp_screen.dart';
import 'package:myquizapp/listQuiz/quizs/dart_quiz/screens/quiz/quiz_screen.dart';
import 'package:myquizapp/listQuiz/quizs/java_quiz/screens/welcome/java_screen.dart';
import 'package:myquizapp/theme/box_icons_icons.dart';
import 'package:flutter/material.dart';

class AllQuizList extends StatelessWidget {
  AllQuizList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Quiz'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DartQuizScreen(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                color: const Color.fromARGB(149, 18, 37, 52),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Dart Language Quiz",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Red Hat Display',
                            fontSize: 18),
                      ),
                      Icon(BoxIcons.bx_send,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ////////////c
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CScreen(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                color: const Color.fromARGB(149, 18, 37, 52),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "C Language Quiz",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Red Hat Display',
                            fontSize: 18),
                      ),
                      Icon(BoxIcons.bx_send,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ////////////Cppp
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CppScreen(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                color: const Color.fromARGB(149, 18, 37, 52),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "C++ Language Quiz",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Red Hat Display',
                            fontSize: 18),
                      ),
                      Icon(BoxIcons.bx_send,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JavaScreen(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
                color: const Color.fromARGB(149, 18, 37, 52),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Java Language Quiz",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Red Hat Display',
                            fontSize: 18),
                      ),
                      Icon(BoxIcons.bx_send,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
