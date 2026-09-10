
import 'package:flutter/material.dart';
import 'package:mi_card/quize%20app/quize-model.dart';

class QuizeData {
  List<Quizemodel>questions=[
   Quizemodel("The sky is blue.", true),
   Quizemodel("The sun rises from the west",false),
   Quizemodel("Flutter is developed by Google.",true),
  ];
  List<Icon>icons = [];
  int counter = 0;
 void chekAnswer(bool userAnswer) {
 if (counter == questions.length) {
  return;
 }
 bool correctAnswer = questions[counter].answer;
 if (userAnswer == correctAnswer) {
  icons.add(
    const Icon(
      Icons.check,
      color: Colors.green,
    ),
  );

  
    icons.add(
      const Icon(
        Icons.close,
        color: Colors.red
      ),
    );
 }

}
}