import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: QuizApp(),
      ),
    ),
  );
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(flex:4,child: Center(child: Container(child:Text('Question here')))),
          Expanded(flex:2,child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(color:Colors.blue,onPressed: (){}, child: Text('True',style: TextStyle(color: Colors.white),),),
              ),
              SizedBox(width: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(color:Colors.blue,onPressed: (){}, child: Text('False',style: TextStyle(color: Colors.white))),
              )
            ],
          )),
        ],
      ),
    );
  }
}
