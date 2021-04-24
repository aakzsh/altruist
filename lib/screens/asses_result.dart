import 'package:flutter/material.dart';

class AssessResult extends StatelessWidget {
  final bool result;
  AssessResult(this.result);
  String setTitle() {
    if (result == true)
      return "Congrats";
    else
      return "A bit Stressed";
  }

  String setComment() {
    if (result == true)
      return "Your are doing well!";
    else
      return "xyz";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                setTitle(),
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                setComment(),
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ],
          ),
          height: 400,
          width: 300,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.green, width: 5)),
        ),
      ),
    );
  }
}
