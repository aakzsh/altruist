import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:altruist/screens/asses_result.dart';
import 'package:flutter_question_answer_widget/flutter_question_answer_widget.dart';

class Assess extends StatefulWidget {
  @override
  _AssessState createState() => _AssessState();
}

class _AssessState extends State<Assess> {
  String ans1, ans2, ans3, ans4, ans5;
  final answerlist = [
    "Strongly agree",
    "Agree",
    "Disagree",
    "Strongly Disagree"
  ];
  int agree = 0, disagree = 0;
  bool congrats;

  void checkAns(String ans) {
    if (ans == answerlist[2] || ans == answerlist[3]) disagree++;
    if (ans == answerlist[0] || ans == answerlist[1]) agree++;
  }

  void checkDup(String ans) {
    if (ans == answerlist[2] || ans == answerlist[3]) disagree--;
    if (ans == answerlist[0] || ans == answerlist[1]) agree--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          //onPressed: () => Navigator.of(context).pop();,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homescreen(),
              ),
            );
          },
        ),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        title: Image.network(
          "https://i.ibb.co/QbHLm3W/1619222838571.png", //gonna add the actual logo later
          height: 60,
        ),
        flexibleSpace: Container(
          // color: Colors.white,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: FlutterQuestionAnswerWidget.singleSelection(
                answersFontSize: 17,
                questionTextStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                answerMargin:
                    EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                answerWidth: 200,
                selectedAnswerBackGroundColor: Colors.green,
                answered: ans1,
                question: "1. I always have a sound sleep and happy dreams.",
                answerList: answerlist,
                onChanged: (String value) {
                  setState(() {
                    if (ans1 == null)
                      checkAns(value);
                    else {
                      checkDup(ans1);
                      checkAns(value);
                    }
                    ans1 = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: FlutterQuestionAnswerWidget.singleSelection(
                answersFontSize: 17,
                questionTextStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                answerMargin:
                    EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                answerWidth: 200,
                selectedAnswerBackGroundColor: Colors.green,
                answered: ans2,
                question: "2.	I feel good when reminded of past events.",
                answerList: answerlist,
                onChanged: (String value) {
                  setState(() {
                    if (ans2 == null)
                      checkAns(value);
                    else {
                      checkDup(ans2);
                      checkAns(value);
                    }
                    ans2 = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: FlutterQuestionAnswerWidget.singleSelection(
                answersFontSize: 17,
                questionTextStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                answerMargin:
                    EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                answerWidth: 200,
                selectedAnswerBackGroundColor: Colors.green,
                answered: ans3,
                question:
                    "3.	Generally, I react calmly when encountered with something unexpected.",
                answerList: answerlist,
                onChanged: (String value) {
                  setState(() {
                    if (ans3 == null)
                      checkAns(value);
                    else {
                      checkDup(ans3);
                      checkAns(value);
                    }
                    ans3 = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: FlutterQuestionAnswerWidget.singleSelection(
                answersFontSize: 17,
                questionTextStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                answerMargin:
                    EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                answerWidth: 200,
                selectedAnswerBackGroundColor: Colors.green,
                answered: ans4,
                question:
                    "4.	I feel healthy (have good appetite, normal heart rate, etc.)",
                answerList: answerlist,
                onChanged: (String value) {
                  setState(() {
                    if (ans4 == null)
                      checkAns(value);
                    else {
                      checkDup(ans4);
                      checkAns(value);
                    }
                    ans4 = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: FlutterQuestionAnswerWidget.singleSelection(
                answersFontSize: 17,
                questionTextStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                answerMargin:
                    EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                answerWidth: 200,
                selectedAnswerBackGroundColor: Colors.green,
                answered: ans5,
                question:
                    "5.	I can concentrate well and balance work-life as well as at home.",
                answerList: answerlist,
                onChanged: (String value) {
                  setState(() {
                    if (ans5 == null)
                      checkAns(value);
                    else {
                      checkDup(ans5);
                      checkAns(value);
                    }
                    ans5 = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
                child: MaterialButton(
                  onPressed: () {
                    //
                    print("$agree  $disagree");
                    if (agree + disagree >= 5 && agree > disagree)
                      congrats = true;
                    else
                      congrats = false;

                    if (agree + disagree >= 5) {
                      setState(() {
                        // agree = 0;
                        // disagree = 0;
                        // ans1 = null;
                        // ans2 = null;
                        // ans3 = null;
                        // ans4 = null;
                        // ans5 = null;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AssessResult(congrats)));
                      });
                    }

                    //else
                    print("more");
                  },
                  child: Text(
                    'See Results',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
