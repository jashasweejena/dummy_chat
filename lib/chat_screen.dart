import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}


class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _mTextController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage> [];  //Making a "ChatMessage" list and initializing it to an empty list.

  Widget _textComposer(){ 
    return new IconTheme( //Parent
        data: new IconThemeData(
        color: Colors.blue,
        ),//Helps with modifying the icons in the subtree.
        child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
              decoration: new InputDecoration.collapsed(
              hintText: "Send a message!",
          ),
          controller: _mTextController,
          onSubmitted: _handleSubmitted,
        )
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmitted(_mTextController.text),
              )
            )
          ],
        )
      ),
    );
  }

  void _handleSubmitted(String message){
    _mTextController.clear();
    ChatMessage chatMessage = new ChatMessage(text: message);
    setState(() {
          _messages.insert(0, chatMessage); //Using setState() coz that way we could modify the _messages list which is a member.
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,int index) => _messages[index] ,
              itemCount: _messages.length,
              ),
          ),
          new Divider(height: 1.0,),
          new Container(
            decoration: new BoxDecoration(color: Theme.of(context).cardColor),
            child: _textComposer()
          )
        ],
      );
  }
}