import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:numberpicker/numberpicker.dart';


class Timer extends StatefulWidget {
  final String title;
  Timer({this.title});
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final CountdownController _controller = new CountdownController();
  String finished = "";
  bool _isPause = true;
  bool _isRestart = false;
  int _currentTimerSeconds = 10;

  @override
  Widget build(BuildContext context) {

    IconData buttonIcon = _isRestart
        ? Icons.refresh
        : (_isPause ? Icons.pause : Icons.play_arrow);

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  height: 400,
                  width: 300,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.green, width: 5)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/" + widget.title + ".gif"),
                        Countdown(
                          controller: _controller,
                          seconds: _currentTimerSeconds,
                          build: (_, double time) => Text(
                            time.ceil().toString()+'s',
                            style: TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          interval: Duration(seconds: 1),
                          onFinished: () {
                            print('Timer is done!');
                            finished = " Congrats! You did it!!";

                            setState(() {
                              _isRestart = true;
                            });
                          },
                        ),
                        Center(
                          child: Text(
                            finished,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 16),
                    NumberPicker(
                      value: _currentTimerSeconds,
                      minValue: 0,
                      maxValue: 59,
                      step: 1,
                      haptics: true,
                      onChanged: (value) => setState(() {
                        _currentTimerSeconds = value;
                        buttonIcon= Icons.play_arrow;
                        _controller.pause();
                        finished = "Paused!!";
                        _isPause=true;
                        _isRestart=false;
                        _controller.isCompleted=true;
                      }) ,
                    ),
                    SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => setState(() {
                            final newValue = _currentTimerSeconds - 1;
                            _currentTimerSeconds = newValue.clamp(0, 59);
                          }),
                        ),
                        Text('Timer set to : $_currentTimerSeconds \bs'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () => setState(() {
                            final newValue = _currentTimerSeconds + 1;
                            _currentTimerSeconds = newValue.clamp(0, 59);
                          }),
                        ),
                      ],
                    ),],
                ),
              ]
          ),

        ),

        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(buttonIcon),
        onPressed: () {
          final bool isCompleted = _controller.isCompleted;
          isCompleted ? _controller.restart() : _controller.pause();

          if (!isCompleted && !_isPause) {
            setState(() {
              finished = "";
            });
            _controller.resume();
          }
          if (_isPause) {
            setState(() {
              finished = "Paused!!";
            });
          }
          setState(() {
            if (isCompleted) {
              setState(() {
                finished = "";
              });
              _isRestart = false;
            } else {
              _isPause = !_isPause;
            }
          });
        },
      ),
    );
   }
}