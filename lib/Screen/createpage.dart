import 'package:claire_app/Screen/bottomBar.dart';
import 'package:claire_app/Screen/introductionpage.dart';
import 'package:claire_app/Screen/loginpage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

bool _ischeck = false;
bool _ischeck1 = false;
bool _ischeck2 = false;

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown[100],
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 18),
                Text(
                  'Join the Family',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Sofia Pro',
                  ),
                ),
                SizedBox(height: 20.0),
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
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Sofia Pro',
                        fontSize: 23.0,
                        color: Color(0xFF333333)),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Checkbox(
                        activeColor: Colors.brown,
                        value: _ischeck,
                        onChanged: (val) {
                          setState(() {
                            _ischeck = !_ischeck;
                          });
                        }),
                    Text(
                      'Include me in emails about Claire Sharryn Roberto\’s \n'
                      'services+ promotions. You may unsubscribe at any time',
                      style: TextStyle(
                          fontFamily: 'Sofia Pro',
                          fontSize: 10.0,
                          color: Color(0xFF333333)),
                    ),
                  ],
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
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                        activeColor: Colors.brown,
                        value: _ischeck1,
                        onChanged: (val) {
                          setState(() {
                            _ischeck1 = !_ischeck1;
                          });
                        }),
                    Text(
                      'Accept our Terms and Conditions',
                      style: TextStyle(
                          fontFamily: 'Sofia Pro',
                          fontSize: 14.0,
                          color: Color(0xFF333333)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                        activeColor: Colors.brown,
                        value: _ischeck2,
                        onChanged: (val) {
                          setState(() {
                            _ischeck2 = !_ischeck2;
                          });
                        }),
                    Text(
                      'Accept our Privacy Policy',
                      style: TextStyle(
                          fontFamily: 'Sofia Pro',
                          fontSize: 14.0,
                          color: Color(0xFF333333)),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65.0,
                    width: 300.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroPage()));
                      },
                      color: Color(0xFF6F3744),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Text('Create an Account',
                                style: TextStyle(
                                  fontFamily: 'Sofia Pro',
                                  fontSize: 22,
                                  color: Color(0xFFF3E9E3),
                                )),
                          ),
                          VerticalDivider(
                              color: Color(0xFFF3E9E3), width: 5, thickness: 2),
                          SizedBox(width: 14),
                          FaIcon(FontAwesomeIcons.longArrowAltRight,
                              color: Color(0xFFF3E9E3)),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
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
                          text: 'Login',
                          style: TextStyle(
                            color: Color(0xFF6F3744),
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
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
      ),
    );
  }
}
