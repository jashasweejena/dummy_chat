import 'package:flutter/material.dart';
  const String _name = "Jashaswee";

class ChatMessage extends StatelessWidget{
    String text ;

  ChatMessage({this.text}); //Constructor with optional field "text" 

  @override
  Widget build(BuildContext context) {

    return new Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _name,
                style: Theme.of(context).textTheme.subhead),
                new Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: new Text(text),
                )
            ],
          )
        ],
      ),
    );
  }

}