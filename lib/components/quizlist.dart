import 'package:flutter/material.dart';
import 'package:nation_guide_etr/data/backdata.dart';
import 'package:nation_guide_etr/models/quiz.dart';

class Maincontent extends StatefulWidget {
  Maincontent({super.key});

  @override
  State<Maincontent> createState() => _MaincontentState();
}

class _MaincontentState extends State<Maincontent> {

  bool isFinished = false;
  final List<CountryQuiz> queslist = generateCountryQuiz();
  int quesindex = 0, score = 0, ansIndex = 0;
  String remarks = "";

  void checkAns(int ansIndex) {
    setState(() {
      if (ansIndex == queslist[quesindex].options.indexOf(queslist[quesindex].answer)) {
        score++;
      }
      if (quesindex < queslist.length - 1) {
        quesindex++;
      } else {
        isFinished = true;
        if (score >= 0 && score <= 5) {
          remarks = 'You failed!';
        } else if (score >= 6 && score <= 8) {
          remarks = 'That\'s good!';
        } else if (score >= 9 && score <= 10) {
          remarks = 'Perfect!';
        }
      }
    });
  }

  Widget showQuestion() {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              Text('Question #  ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
              Text('${quesindex+1} / 10',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            queslist[quesindex].question,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        for (int i = 0; i < queslist[quesindex].options.length; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () => checkAns(i),
              child: Text(
                queslist[quesindex].options[i],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                minimumSize: Size(300, 50),
              ),
            ),
          ),
      ],
    ),
  );
}
  
  Widget showScore() {
    return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 250),
              child: Text(remarks,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text('$score/10',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w700,
                color: Colors.green.shade700,
              ),),
            ),
            Container(
              child: OutlinedButton(onPressed: () {
                setState(() {
                  quesindex = 0;
                  isFinished = false;
                  score = 0;
                  remarks = "";
                });
              },
               child: Icon(Icons.repeat_rounded,
                size: 50,
                color: Colors.black,
                ),
               ),
            ),
          ],
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return isFinished ? showScore() : showQuestion();
  }
}