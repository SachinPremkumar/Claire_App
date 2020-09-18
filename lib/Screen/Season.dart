import 'package:claire_app/Screen/bottomBar.dart';
import 'package:flutter/material.dart';

class SeasonOne extends StatefulWidget {
  SeasonOne({Key key}) : super(key: key);

  @override
  _SeasonOneState createState() => _SeasonOneState();
}

class _SeasonOneState extends State<SeasonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0),
                Text(
                  'Unlock Season One',
                  style: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF6f3744),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'for only',
                  style: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "\$24.99",
                  style: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF6f3744),
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  '50 Plant-Based Recipes curated\n'
                  'by internationally renowned\n'
                  'Chef Claire Sharryn Roberto',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Sofia Pro',
                    letterSpacing: 0.5,
                    wordSpacing: 2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: 30),
                typeText('Plant-Based Recipe Videos'),
                typeText('Gluten-Free'),
                typeText('Refined Sugar-Free'),
                typeText('Zero Nasties'),
                typeText('Ayurveda + Nutrition Tips'),
                typeText('Healing Recipes'),
                typeText('Kitchen Staples'),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 65.0,
                    width: 300.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomBar()));
                      },
                      color: Color(0xFF6F3744),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text('Buy Now',
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
      ),
    );
  }

  Widget typeText(String _text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        _text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Sofia Pro',
          letterSpacing: 0.5,
          fontSize: 20.0,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
