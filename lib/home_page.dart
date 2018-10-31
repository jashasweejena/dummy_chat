import 'package:flutter/material.dart';
import 'chat_screen.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Chaat Khaalo frands!!"),
      ),
drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text(
                  "JJ",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                accountEmail: new Text(
                  "jj@gmail.com",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                )),
            new Column(children: drawerOptions)
          ],
        ),
),
      body: new ChatScreen()
    );
  }
}

