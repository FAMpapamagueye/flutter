// ignore_for_file: unrelated_type_equality_checks, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  int score=0;
  var quiz = [
    {
      "title": "question 1",
      "answers": [
        {"answer": "answer 11", "correct": true},
        {"answer": "answer 12", "correct": true},
        {"answer": "answer 13", "correct": false},
      ]
    },
    {
      "title": "question 2",
      "answers": [
        {"answer": "answer 21", "correct": true},
        {"answer": "answer 22", "correct": false},
        {"answer": "answer 23", "correct": true},
      ]
    },
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(title: Text("Quiz"), backgroundColor: Colors.deepOrange),
        // ignore: prefer_const_constructors
        body: (currentQuestion >= quiz.length)?
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[     
              Text("Score : ${(100 * score / quiz.length).round()}%",
              style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 22),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  currentQuestion=0;
                  score=0;
                });
              }, 
              child: Text('Restart..........',style: TextStyle(color: Colors.white,fontSize: 22))
              ),
              
            ],
          ),
        )
       : ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            ListTile(
              title: Center(
                child: Text(
                  "Question ${currentQuestion + 1}/${quiz.length}",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              title: Text(
                '${quiz[currentQuestion]['title']}',
                // ignore: prefer_const_constructors
                style: TextStyle(
                 fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ...(quiz[currentQuestion]['answers'] as List<Map<String, Object>>).map((answer){
            print('*******************-------------------********************${answer['correct']}');
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title:ElevatedButton(
                  onPressed: () {
                   setState(() {
                    answer.forEach((key, value) {
                      print(value);
                       if(value== true) {
                      ++score;
                     };
                    });
                       ++currentQuestion;
                      print('**************************************${score}');
                       print('**************************************${currentQuestion}');    
                   });
                  
            // Add your onPressed action here
                  },
                  child: Container(
                    child:Align(
                      alignment:Alignment.centerLeft,
                  
                    child: Text(
                      '${answer['answer']}',
                      style: TextStyle(color: Colors.white,
                      fontSize: 22,fontWeight: FontWeight.bold),
                      )
                    ),
                      padding:EdgeInsets.all(10)
                )
            ),
                    )          );
}),
          ],
        ));
  }
}
