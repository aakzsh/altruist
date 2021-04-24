import 'package:altruist/timer.dart';
import 'package:flutter/material.dart';

class exercises extends StatefulWidget {
  @override
  _exercisesState createState() => _exercisesState();
}

class _exercisesState extends State<exercises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercises for you"),
      ),
      body: GridView.count(

      shrinkWrap: true,
    primary: true,
    crossAxisCount: 2,
      children: <Widget>[
        Column(
          children: <Widget>[
            FlatButton(onPressed: (){

              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) => timerCountdown(),
              // ),
              // );
            }, child: Image.asset("assets/workout.gif",
            height: 150, width: 150,
            )),
            Text("Workout"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.asset("assets/stretching.gif",
              height: 150, width: 150,
            )),
            Text("Stretching"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.asset("assets/breathing.gif",
              height: 150, width: 150,
            )),
            Text("Breathing"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.asset("assets/jogging.gif",
              height: 150, width: 150,
            )),
            Text("Jogging"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.asset("assets/yoga.gif",
              height: 150, width: 150,
            )),
            Text("Yoga"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.asset("assets/warmup.gif",
              height: 150, width: 150,
            )),
            Text("Warm-Up"),
          ],
        ),
      ],
      ),
    );
  }
}
