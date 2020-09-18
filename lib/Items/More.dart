import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E9E3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3E9E3),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'More',
          style: TextStyle(
            fontFamily: 'Sofia Pro',
            fontSize: 35.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              Image(
                  height: 92,
                  image: AssetImage('assets/logo.png'),
                  color: Colors.black),
              SizedBox(height: 35),
              moreList('About Claire'),
              moreList('Payment Settings'),
              moreList('Login Settings'),
              moreList('Send us a Message'),
              moreList('Support + Feedback'),
              moreList('Request a Recipe'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 65.0,
                  width: 300.0,
                  child: RaisedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //   MaterialPageRoute(builder: (context) => BottomBar()));
                    },
                    color: Color(0xFF6F3744),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text('Review us',
                        style: TextStyle(
                          fontFamily: 'Sofia Pro',
                          fontSize: 22,
                          color: Color(0xFFF3E9E3),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget moreList(String _title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        _title,
        style: TextStyle(
          fontFamily: 'Sofia Pro',
          fontSize: 26.0,
        ),
      ),
    );
  }
}
