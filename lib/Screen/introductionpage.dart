import 'package:claire_app/Screen/Season.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color(0xFF6f3744),
        body: PageView(
          controller: controller,
          children: [
            _onBoardItem('Season One'),
            _onBoardItem('Season Two'),
            _onBoardItem('Season Three'),
          ],
        ),
      ),
    );
  }

  Widget _onBoardItem(String _title) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              height: 150.0,
              width: 150.0,
              color: Colors.white,
              image: AssetImage('assets/logo.png')),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SeasonOne()));
            },
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 260.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 15.0,
                        offset: Offset(
                          10.0,
                          5.0,
                        ),
                      )
                    ],
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://clairesharrynrobertoapp.com/media/57/Mains.JPG"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 110.0,
                  child: Container(
                    height: 140.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15.0,
                          offset: Offset(
                            10.0,
                            5.0,
                          ),
                        )
                      ],
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://clairesharrynrobertoapp.com/media/54/Valentines-Day.JPG"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Positioned(
                  top: 200.0,
                  right: 120.0,
                  child: Container(
                    height: 140.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 15.0,
                          offset: Offset(
                            10.0,
                            5.0,
                          ),
                        )
                      ],
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://clairesharrynrobertoapp.com/media/41/desserts.jpg"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 150.0),
          Text(
            _title,
            style: TextStyle(
              fontFamily: 'Sofia Pro',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Color(0xFFF3E9E3),
            ),
          )
        ],
      ),
    ));
  }
}
