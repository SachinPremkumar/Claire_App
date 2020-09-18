import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  Recipes({Key key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          children: <Widget>[
            InkWell(
              child: myGridItem('assets/Holiday.jpg', 'Holiday'),
              onTap: () {
                print('hi');
              },
            ),
            myGridItem('assets/Breakfast.jpg', 'Breakfast'),
            myGridItem('assets/Desserts.jpg', 'Desserts'),
            myGridItem('assets/Smoothie.jpg', 'Smoothie Bowls'),
            myGridItem('assets/Mains.jpg', 'Mains'),
            myGridItem('assets/ita.jpg', 'Italian'),
            myGridItem('assets/orange.png', 'Snacks'),
            myGridItem('assets/Valentines.jpg', 'Valentines Day'),
          ],
        ),
      ),
    );
  }

  Widget myGridItem(String _image, String _title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(_image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Container(
              height: 50.0,
              width: 145.0,
              color: Color(0xFFF4F1EF),
              child: Center(
                child: Text(_title,
                    style: TextStyle(
                      fontFamily: 'Sofia Pro',
                      fontSize: 18.0,
                      color: Colors.black,
                    )),
              ))),
    );
  }
}
