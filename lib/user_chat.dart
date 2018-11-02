import './data.dart';
import 'package:flutter/material.dart';

class ChatUser extends StatelessWidget {

  final Friend friend;

  ChatUser(this.friend);

  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      elevation: 0.5,
      title: Text(friend.name,),
      leading: InkWell(
        child: Image(
          image: AssetImage(friend.image),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(children: <Widget>[
        Text(friend.name),
        Text(friend.message),
      ],),
    );
  }
}