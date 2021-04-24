import 'package:flutter/material.dart';
import 'package:altruist/side_drawer.dart';

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

  String getImage() {
    if (result == true)
      return "https://cdn.discordapp.com/attachments/834814458495762473/835379192505040906/cute-critters-vector2.png";
    else
      return "https://cdn.discordapp.com/attachments/834814458495762473/835379204223926282/cute-critters-vector5.png";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.network(
              "https://i.ibb.co/QbHLm3W/1619222838571.png", //gonna add the actual logo later
              height: 60,
            ),
          ],
        ),
        flexibleSpace: Container(
          // color: Colors.white,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
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
              SizedBox(
                height: 20,
              ),
              Image.network(
                getImage(),
                scale: 1.5,
              )
            ],
          ),
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 5),
          ),
        ),
      ),
    );
  }
}
