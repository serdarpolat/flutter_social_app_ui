import 'package:flutter/material.dart';
import 'package:social_app/chats.dart';
import 'package:social_app/home.dart';

class SocialHome extends StatefulWidget {
  static String tag = 'ana-sayfa';
  @override
  _SocialHomeState createState() => _SocialHomeState();
}

class _SocialHomeState extends State<SocialHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF3D3F4B),
        body: TabBarView(
          children: <Widget>[
            new HomePage(),
            new ChatPage(),
            new Container(color: Colors.green),
            new Container(color: Colors.blue),
          ],
        ),
        bottomNavigationBar: new TabBar(
          indicatorWeight: 1.0,
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.chat_bubble)),
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.settings)),
          ],
          labelColor: Color(0xFF5791FB),
          unselectedLabelColor: Colors.white30,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Color(0xFF5791FB),
        ),
      ),
    );
  }
}
