
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myquizapp/listQuiz/quizs/java_quiz/controllers/java_controller.dart';

//import 'package:flutter_svg/svg.dart';

class JavaScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    JavaQuestionController _qnController = Get.put(JavaQuestionController());
    return Scaffold(
      appBar: AppBar(
          leading:
              //     IconButton(onPressed: () { Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                       builder: (context) => Home(),
              //                     ));}, icon: Icon(Icons.arrow_back_ios)
              //  )
              //
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios))),
      backgroundColor: Color(0xFF0083BE),
      body: Stack(
        fit: StackFit.expand,
        children: [
          //SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Total Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: Colors.white),
              ),
              // Spacer(),
              Text(
                "${_qnController.correctAns! * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
