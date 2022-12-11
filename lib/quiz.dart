import 'dart:ffi';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion; //Fucntion but a void function

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIndex]['questionText'] as String),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //the ... is used coz we have list in a list , and this ... will change the inside list into individual elements.
          return Answer(
              () => answerQuestion(answer['score']),
              (answer['text']
                  as String)); // if we simply use answerQ(), we will get an error coz it will try to execute the function when gettign compiled, we dont put () to avoid that, but to send arguments, we are using this () => to create a function on the fly and will not give errors
        }).toList()
      ],
    );
  }
}
