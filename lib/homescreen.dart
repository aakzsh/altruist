import 'package:altruist/screens/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'side_drawer.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Image.network("https://i.ibb.co/QbHLm3W/1619222838571.png", //gonna add the actual logo later
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
      drawer: MainDrawer(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              primary: true,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: FlatButton(
                      onPressed: () {
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => resources(),
                         ),
                         );
                      },
                      child: Column(

                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 30),
                            child: Container(

                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                    colors: [Colors.green[800], Colors.lightGreen[500]]),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              ),
                              height: 80.0,
                              width: 80.0,
                              child: Icon(
                                Icons.book_rounded,
                                color: Colors.white,
                                size:50.0,
                                semanticLabel:
                                'questions',
                              ),
                            ),
                          ),
                          Text("Resources"),
                        ],
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) => access(),
                        // ),
                        // );
                      },
                      child: Column(

                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 30),
                            child: Container(

                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                    colors: [Colors.green[800], Colors.lightGreen[500]]),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              ),
                              height: 80.0,
                              width: 80.0,
                              child: Icon(
                                Icons.sticky_note_2_outlined,
                                color: Colors.white,
                                size:50.0,
                                semanticLabel:
                                'questions',
                              ),
                            ),
                          ),
                          Text("Assess Yourself"),
                        ],
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) => texting(),
                        // ),
                        // );
                      },
                      child: Column(
                        children: <Widget>[

                          Container(

                            decoration: BoxDecoration(
                              color: Colors.white,
                              gradient: LinearGradient(
                                  colors: [Colors.green[800], Colors.lightGreen[500]]),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            ),
                            height: 80.0,
                            width: 80.0,
                            child: Icon(
                              Icons.messenger,
                              color: Colors.white,
                              size:50.0,
                              semanticLabel:
                              "talking with therapists and buddies",
                            ),
                          ),
                          Text("Texting"),
                        ],
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: FlatButton(
                      onPressed: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //
                        //         builder: (context) => gamesidk()),
                        //   );
                      },
                      child: Column(
                        children: <Widget>[
                          Container(

                            decoration: BoxDecoration(
                              color: Colors.white,
                              gradient: LinearGradient(
                                  colors: [Colors.green[800], Colors.lightGreen[500]]),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            ),
                            height: 80.0,
                            width: 80.0,
                            child: Icon(
                              Icons.sports_basketball,
                              color: Colors.white,
                              size:50.0,
                              semanticLabel:
                              'games and exercises',
                            ),
                          ),
                          Text("Games and Exercises"),
                        ],
                      ),
                      color: Colors.transparent,
                    ),
                  ),

                ),

              ],
            ),




            Container(

              alignment: Alignment.bottomCenter,
              child: CarouselSlider(

                options: CarouselOptions(height: 150.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 15),),
                items: [
                  "https://i.ibb.co/s997Ddv/20210424-073225.png",
                  "https://i.ibb.co/QCDvPMt/20210424-073037.png",
                  "https://i.ibb.co/sJCJpdV/20210424-072948.png",
                  "https://i.ibb.co/djW5H5s/20210424-072834.png",
                  "https://i.ibb.co/VQ9Tvdq/20210424-072654.png",
                  "https://i.ibb.co/jwrFPT2/20210424-072541.png",
                  "https://i.ibb.co/hmtxj55/20210424-072334.png",
                  "https://i.ibb.co/Sxfw9pL/20210424-072202.png",
                  "https://i.ibb.co/Pt1tBkD/20210424-072057.png",
                  "https://i.ibb.co/4M4gwHB/20210424-071942.png",
                  "https://i.ibb.co/HN10R98/20210424-071837.png",
                  "https://i.ibb.co/z82ckvD/20210424-071656.png"

                ].map((i)

                {

                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(

                            color: Colors.transparent,
                          ),
                          child: Image.network("$i")
                      );
                    },
                  );
                }).toList(),
              ),




              decoration: BoxDecoration(
                color: Colors.white,

                gradient: LinearGradient(
                    colors: [Colors.green[800], Colors.lightGreen[500]]),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
              ),
              height: 150,
              width: double.infinity,

            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
