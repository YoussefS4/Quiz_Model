import 'package:flutter/material.dart';
import 'package:quiz_model/question_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Welcome to the Quiz \n'
                ' Click Start to begin',
                style: TextStyle(
                  color: Colors.orange[900],
                  fontSize: 40.0,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionScreen(0)
                    ),
                  );
                },
                child: Container(
                  height: 70.0,
                  width: 170.0,
                  child: Center(
                      child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.orange[900],
                      borderRadius: BorderRadius.circular(19.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
