
import 'package:myquizapp/listQuiz/quizs/dart_quiz/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myquizapp/listQuiz/quizs/java_quiz/screens/quiz/quiz_screen.dart';

class JavaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2), //2/6
                  Text("Let's Play Java Quiz,",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: const Color.fromARGB(255, 251, 251, 251),
                          )),
                  const Text("Enter your informations below",
                      style: TextStyle(
                        color: Color.fromARGB(255, 251, 251, 251),
                      )),
                  const Spacer(), // 1/6
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 228, 229, 234),
                      hintText: "Enter Your Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  const Spacer(), // 1/6
                  InkWell(
                    onTap: () => Get.to(JavaQuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Start Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
