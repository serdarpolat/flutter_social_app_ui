import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF363846),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    new PersonStatus(
                      personImg: 'images/user5.jpg',
                    ),
                    new PersonStatus(
                      personImg: 'images/user7.jpg',
                    ),
                    new PersonStatus(
                      personImg: 'images/user6.jpg',
                    ),
                    new PersonStatus(
                      personImg: 'images/user1.jpg',
                    ),
                    new PersonStatus(
                      personImg: 'images/user2.jpg',
                    ),
                    new PersonStatus(
                      personImg: 'images/user3.jpg',
                    ),
                    new PersonStatus(
                      personImg: 'images/user4.jpg',
                    ),
                    new PersonStatus(
                      personImg: 'images/user5.jpg',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Card(
                color: Color(0xFF414350),
                elevation: 1.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/user8.jpg'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Share something',
                                labelStyle: TextStyle(fontSize: 12.0),
                                suffixIcon: Icon(
                                  Icons.face,
                                  color: Color(0xFFFFD93B),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                InkWell(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.photo_camera,
                                          color: Color(0xFF5994FF),
                                        ),
                                      ),
                                      Text(
                                        'Photo',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.people,
                                          color: Color(0xFF5994FF),
                                        ),
                                      ),
                                      Text(
                                        'Tag',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.mood,
                                          color: Color(0xFF5994FF),
                                        ),
                                      ),
                                      Text(
                                        'Feel',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 6.0),
              child: Text(
                'Newsfeed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Card(
                color: Color(0xFF414350),
                elevation: 1.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/user7.jpg'),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Safa Rai',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  '1 hr.',
                                  style: TextStyle(
                                    color: Colors.white30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                      child: Text(
                        'Watch Martin Aguinis from the Flutter team build and customize a widget for a shopping app from scratch. Flutter is Google’s mobile SDK for crafting high-quality native interfaces on iOS and Android in record time',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF627C),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white70,
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '25 likes',
                                  style: TextStyle(
                                    color: Color(0xFFFF627C),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5994FF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.white70,
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '6 comments',
                                  style: TextStyle(
                                    color: Color(0xFF5994FF),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Card(
                color: Color(0xFF414350),
                elevation: 1.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/user5.jpg'),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      'Emily Brown',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2 hr.',
                                    style: TextStyle(
                                      color: Colors.white30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Image.asset('images/penguin.jpg'),
                      SizedBox(height: 6.0),
                      Text(
                        'Emperior Penguin',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF627C),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white70,
                                      size: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    '25 likes',
                                    style: TextStyle(
                                      color: Color(0xFFFF627C),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF5994FF),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.chat,
                                      color: Colors.white70,
                                      size: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    '6 comments',
                                    style: TextStyle(
                                      color: Color(0xFF5994FF),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Card(
                color: Color(0xFF414350),
                elevation: 1.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/user4.jpg'),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Jane Doe',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  '3 hr.',
                                  style: TextStyle(
                                    color: Colors.white30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                      child: Text(
                        'Flutter team build and customize a widget for a shopping app from scratch. Flutter is Google’s mobile SDK for crafting high-quality native interfaces on iOS and Android in record time',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF627C),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white70,
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '17 likes',
                                  style: TextStyle(
                                    color: Color(0xFFFF627C),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5994FF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.white70,
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '11 comments',
                                  style: TextStyle(
                                    color: Color(0xFF5994FF),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonStatus extends StatelessWidget {
  final String personImg;
  const PersonStatus({
    Key key,
    this.personImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: const EdgeInsets.all(3.4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            width: 2.0,
            color: const Color(0xFF558AED),
          ),
        ),
        child: Container(
          width: 54.0,
          height: 54.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            image: DecorationImage(
              image: AssetImage(personImg),
            ),
          ),
        ),
      ),
    );
  }
}
