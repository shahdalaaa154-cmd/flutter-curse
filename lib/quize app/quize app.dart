import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyWidget extends StatefulWidget {
  const new({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

List<String> questions = [
"The sky is blue.",
"The sun rises from the west."
"Flutter is developed by Google."
];
List<bool> answers =[
  true,
  false,
  true,
];
  List<Icon> icon = [];
 int shahd = 0;
 void chekAnswer(bool userAnswer) {
 if (shahd >= questions.length) {
  return;
 }
  setState(() {
    if(userAnswer == answers[shahd]){
      icon.add(const Icon(
        Icons.check,
        color: Colors.green,
      )
      );
    }
    else{}
    icon.add(
      const Icon(
        Icons.close,
        color: Colors.red
      )
    );
  });





 }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black, 
      body: Container( 
        width: double.infinity,
        child: Column(
          children: [
          SizedBox(height: 150,),
          Text(
            questions[shahd],
          style: TextStyle(fontSize: 60, color: Colors.white),
          textAlign: TextAlign.center,
          ),
          SizedBox(height: 70),

          Container(
            width:double. infinity ,
            child: ElevatedButton(onPressed: () {
              chekAnswer(true);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),)

              ),
              child: Text("true",style: TextStyle(
                fontSize: 20,color: Colors.white),
            ),
          ),
        ),
        
            Container( 
            width:double. infinity ,
            child: ElevatedButton(onPressed: () {
              chekAnswer(false);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))

              ),
              child: Text("false",style: TextStyle(
                fontSize: 20,color: Colors.white),

              
            ),
          
          
          ),
        ),
        Container(),
        Row(children: icon),
        
         ])

    ));
  }
}