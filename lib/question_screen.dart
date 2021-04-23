import 'package:flutter/material.dart';
import 'package:quiz_model/quiz/quiz.dart';




class QuestionScreen extends StatefulWidget {

  final int index;
  QuestionScreen(this.index);
  @override
  _State createState() => _State();
}

class _State extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              myQuiz.quiz[widget.index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 40.0,
              ),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50,
              ),
              visible: isCorrect,
              replacement:Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 50,
                ),
                visible: isWrong ,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if(myQuiz.quiz[widget.index].answer==true)
                      setState(() {
                        isCorrect=true;
                        isWrong=false;
                      });
                    else setState(() {
                      isCorrect=false;
                      isWrong=true;
                    });
                  },
                  child: Container(
                    height: 70.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        'True',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ),

                    decoration: BoxDecoration(
                      color: Colors.orange[900],
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if(myQuiz.quiz[widget.index].answer==false)
                      setState(() {
                        isCorrect=true;
                        isWrong=false;
                      });
                    else setState(() {
                      isCorrect=false;
                      isWrong=true;
                    });
                  },

                  child: Container(
                    height: 70.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        'False',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[900],
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuestionScreen(widget.index+1)
                  ),
                );
              },
              child: Container(
                height: 70.0,
                width: 150.0,
                child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    )),
                decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(19.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


