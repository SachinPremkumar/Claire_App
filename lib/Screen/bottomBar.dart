import 'package:claire_app/Icons/my_flutter_app_icons.dart';
import 'package:claire_app/Items/Claire.dart';
import 'package:claire_app/Items/More.dart';
import 'package:claire_app/Items/home.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _initalActiveIndex = 2;
  final List<Widget> _children = [
    ClairePage(),
    Recipes(),
    Recipes(),
    Recipes(),
    MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_initalActiveIndex],
      bottomNavigationBar: StyleProvider(
        style: Style(),
        child: ConvexAppBar(
          style: TabStyle.fixed,
          top: -25.0,
          height: 65.0,
          elevation: 10,
          backgroundColor: Colors.white,
          activeColor: Color(0xFF6f3744),
          color: Colors.black,
          items: [
            TabItem(icon: MyFlutterApp.claire, title: 'Claire'),
            TabItem(icon: MyFlutterApp.mic, title: 'Advice'),
            TabItem(icon: MyFlutterApp.veg, title: 'Recipes'),
            TabItem(icon: MyFlutterApp.heart, title: 'Favourites'),
            TabItem(icon: MyFlutterApp.more, title: 'More'),
          ],
          onTap: onTabTapped,
          initialActiveIndex: _initalActiveIndex,
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _initalActiveIndex = index;
    });
  }
}

class Style extends StyleHook {
  @override
  double get activeIconMargin => 15;

  @override
  double get activeIconSize => 40;

  @override
  double get iconSize => 40;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(
      fontSize: 15,
      fontFamily: 'Sofia Pro',
    );
  }
}
