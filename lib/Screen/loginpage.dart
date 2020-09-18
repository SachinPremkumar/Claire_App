import 'package:claire_app/Screen/bottomBar.dart';
import 'package:claire_app/Screen/createpage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown[100],
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Sofia Pro',
              fontWeight: FontWeight.w500,
              fontSize: 40.0,
              color: Colors.black,
            ),
          ),
          leading: IconButton(
              icon: FaIcon(FontAwesomeIcons.longArrowAltLeft,
                  color: Colors.black),
              onPressed: null),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Image(
                    width: 230.0,
                    height: 230.0,
                    image: AssetImage('assets/logo.png')),
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 23.0,
                      color: Color(0xFF333333)),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 23.0,
                      color: Color(0xFF333333)),
                  suffixText: 'Show',
                  suffixStyle: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 18.0,
                      color: Color(0xFF333333)),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'Sofia Pro',
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 65.0,
                  width: 300.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomBar()));
                    },
                    color: Color(0xFF6F3744),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0),
                          child: Text('Login',
                              style: TextStyle(
                                fontFamily: 'Sofia Pro',
                                fontSize: 22,
                                color: Color(0xFFF3E9E3),
                              )),
                        ),
                        VerticalDivider(
                            color: Color(0xFFF3E9E3), width: 40, thickness: 2),
                        FaIcon(FontAwesomeIcons.longArrowAltRight,
                            color: Color(0xFFF3E9E3)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 18,
                      color: Color(0xFF333333),
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Color(0xFF6F3744),
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccount()));
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
