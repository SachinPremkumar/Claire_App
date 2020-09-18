import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ClairePage extends StatefulWidget {
  ClairePage({Key key}) : super(key: key);

  @override
  _ClairePageState createState() => _ClairePageState();
}

class _ClairePageState extends State<ClairePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4F1EF),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Text(
                'Claire Sharryn Roberto',
                style: TextStyle(
                  fontFamily: 'Sofia Pro',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(height: 15),
              Container(
                  height: 260,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Claire.jpg')))),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    socialMedia('Facebook',
                        'https://www.facebook.com/ChefClaireSharryn/'),
                    socialMedia('Instagram',
                        'https://www.instagram.com/clairesharrynroberto/?hl=en'),
                    socialMedia(
                        'Website', 'https://clairesharrynrobertoapp.com/'),
                  ],
                ),
              ),
              Divider(thickness: 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialMedia(String _title, String _url) {
    return InkWell(
        child: Text(
          _title,
          style: TextStyle(
            fontFamily: 'Sofia Pro',
            fontSize: 17,
          ),
        ),
        onTap: () async {
          if (await canLaunch(_url)) {
            await launch(_url);
          }
        });
  }
}
