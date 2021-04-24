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
            FlatButton(onPressed: null, child: Image.network("https://media.giphy.com/media/4bjIKBOWUnVPICCzJc/giphy.gif",
            height: 150, width: 150,
            )),
            Text("Workout"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.network("https://media.giphy.com/media/3ornk8qaF9ytl9zmY8/source.gif",
              height: 150, width: 150,
            )),
            Text("Stretching"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.network("https://media.giphy.com/media/KAkIahp6EOc4ZJgKDv/giphy.gif",
              height: 150, width: 150,
            )),
            Text("Breathing"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.network("https://media.giphy.com/media/THD7thMQZoOYoyZ3EK/giphy.gif",
              height: 150, width: 150,
            )),
            Text("Jogging"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.network("https://media.giphy.com/media/3oKIPavRPgJYaNI97W/source.gif",
              height: 150, width: 150,
            )),
            Text("Yoga"),
          ],
        ),
        Column(
          children: <Widget>[
            FlatButton(onPressed: null, child: Image.network("https://media.giphy.com/media/3ornjHnlfyrQclXGZq/giphy.gif",
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
