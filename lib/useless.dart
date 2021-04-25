import 'package:flutter/material.dart';


class xyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<xyApp> {
  final List<String> names = <String>[];


  TextEditingController nameController = TextEditingController();

  void addItemToList(){

    if(nameController.text.contains("sad")){
      setState(() {

        names.insert(0,"Don't worry, you got this, I believe in you ❤️");

      });
    }

    else if(nameController.text.contains("happy") ||nameController.text.contains("good") ||nameController.text.contains("awesome")||nameController.text.contains("amazing")||nameController.text.contains("fine")    ){
      setState(() {

        names.insert(0,"yay, that's good I guess️");

      });
    }
    else if(nameController.text.contains("hey") || nameController.text.contains("Hey")||nameController.text.contains("hi")||nameController.text.contains("hello")){
      setState(() {

        names.insert(0,"Hey I'm Bella, how are you? 🥺");

      });
    }
    else if(nameController.text.contains("bye") || nameController.text.contains("goodbye")||nameController.text.contains("I'm going")||nameController.text.contains("byee")){
      setState(() {

        names.insert(0,"Oiw you're going? Well take care bestie!! Byee 🌻");

      });
    }
    else if(nameController.text.contains("haha") || nameController.text.contains("lol") || nameController.text.contains("lmao")){
      setState(() {

        names.insert(0,"That's cool lol, you're funny 😂");

      });
    }
    else if(nameController.text.contains("die") || nameController.text.contains("dead") || nameController.text.contains("suicide")){
      setState(() {

        names.insert(0,"Awe, sad to hear that! But no worries, I believe in you. You should maybe believe in yourself more often. Afterall, you're so amazing 🥰");

      });
    }
    else if(nameController.text.contains("party")){
      setState(() {

        names.insert(0,"Let's have a party lol, suree");

      });
    }
   else{
      setState(() {

        names.insert(0,"Oh I'm sorry, couldn't understand, I'm still learning");

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bella the Bunny Chatbot'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[

              Expanded(
                  child: ListView.builder(

                      padding: const EdgeInsets.all(8),
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {

                      return receive('${names[index]}');
                      }
                  )
              ),
              Container(
                height: 60, width: double.infinity,
                color: Colors.green[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.camera_alt),
                    Container(
                      width: 250,
                      color: Colors.white,
                      child: TextField(
                        controller: nameController,

                        decoration: InputDecoration(hintText: "Type message..."),
                      ),
                    ),
                    IconButton(icon: Icon(Icons.send), onPressed: (){
                      addItemToList();
                    })
                  ],
                ),
              ),
            ]
        )
    );
  }
}




send(String message){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child:  Container(
          constraints: BoxConstraints( maxWidth: 200),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green[800], Colors.lightGreen[500]]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0), bottom: Radius.circular(20.0)),
          ),

          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(message,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    ],
  );

}


receive(String message){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child:  Container(
          constraints: BoxConstraints( maxWidth: 300),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.blue[500]]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0), bottom: Radius.circular(20.0)),
          ),

          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(message,
              style: TextStyle(
                  color: Colors.white,
                fontSize: 15.0
              ),
            ),
          ),
        ),
      ),
    ],
  );

}