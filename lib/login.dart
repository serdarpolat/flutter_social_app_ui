import 'package:flutter/material.dart';
import 'package:social_app/main_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _sifre;
  bool giris;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F303D),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/icon.png'),
                      width: 120.0,
                      height: 120.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            autocorrect: false,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            validator: (str) =>
                                !str.contains('@') ? 'Invalid E-Mail' : null,
                            onSaved: (str) => _email = str,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.person,
                                color: Colors.black54,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(60.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFF3F414E),
                              contentPadding: EdgeInsets.all(20.0),
                              hintText: 'serdar.plt21@gmail.com',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                                fontFamily: 'Josefin',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            validator: (str) => str.length < 7
                                ? 'Invalid Password'
                                : null,
                            onSaved: (str) => _sifre = str,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Colors.black54,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(60.0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFF3F414E),
                              contentPadding: EdgeInsets.all(20.0),
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                                fontFamily: 'Josefin',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              RaisedButton(
                                color: Color(0xFF5489EC),
                                padding:
                                    EdgeInsets.fromLTRB(46.0, 16.0, 46.0, 16.0),
                                child: Text(
                                  'Ready?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Josefin',
                                    fontSize: 22.0,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                onPressed: () {
                                  var form = _formKey.currentState;

                                  if (form.validate()) {
                                    form.save();
                                    Navigator.of(context)
                                        .pushNamed(SocialHome.tag);
                                  }
                                },
                              ),
                              Row(
                                children: <Widget>[
                                  InkWell(
                                    child: Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        image: DecorationImage(
                                          image:
                                              AssetImage('images/google.png'),
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  InkWell(
                                    child: Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        image: DecorationImage(
                                          image:
                                              AssetImage('images/facebook.png'),
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Color(0xFFFF627C),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 90.0,
                          ),
                          Text(
                            'Don\'t have an account?.',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              'Sign Up!',
                              style: TextStyle(
                                color: Color(0xFFFF627C),
                              ),
                            ),
                            onPressed: () {},
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
