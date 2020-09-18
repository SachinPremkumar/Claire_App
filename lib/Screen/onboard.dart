import 'package:claire_app/Screen/createpage.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  Introduction({Key key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.brown[100],
          body: Column(
            children: [
              Image(image: AssetImage('assets/orange.png')),
              Image(
                  width: 165.0,
                  height: 160.0,
                  image: AssetImage('assets/logo.png')),
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
                              builder: (context) => CreateAccount()));
                    },
                    color: Color(0xFF6F3744),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text('Join the Family',
                        style: TextStyle(
                          fontFamily: 'Sofia Pro',
                          fontSize: 22,
                          color: Color(0xFFF3E9E3),
                        )),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('T’s & C’s and Contact Us',
                    style: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 15,
                      color: Color(0xFF333333),
                    )),
              )
            ],
          )),
    );
  }
}
