import 'package:myquizapp/listQuiz/quizs/cpp_quiz/controllers/cpp_controller.dart';
import 'package:myquizapp/listQuiz/quizs/dart_quiz/controllers/dart_controller.dart';
import 'package:myquizapp/listQuiz/models/Questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final Question? question;

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    CppQuestionController _controller = Get.put(CppQuestionController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question!.question!,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kBlackColor),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question!.options!.length,
            (index) => Option(
              index: index,
              text: question!.options![index],
              press: () => _controller.checkAns(question!, index),
            ),
          ),
        ],
      ),
    );
  }
}
