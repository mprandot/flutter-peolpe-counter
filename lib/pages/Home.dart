import 'package:curso/RestaurantMessages.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _restaurantStatus = RestaurantMessages.WITHOUT_PUBLIC;

  void _changePeople(int counter) {
    setState(() {
      _people += counter;
      if(_people > 0) {
        _restaurantStatus = RestaurantMessages.WITH_PUBLIC;
      } else {
        _people = 0;
        _restaurantStatus = RestaurantMessages.WITHOUT_PUBLIC;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff612F74),
        child: Stack(
          children: <Widget>[
            Image.asset(
              "images/restaurant.jpg",
              fit: BoxFit.cover,
              height: 1000.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Pessoas - $_people", textDirection: TextDirection.ltr, 
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: 
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                        child: Text("+1", style: TextStyle(color: Colors.white, fontSize: 20)),
                        onPressed: () {
                          _changePeople(1);
                        },
                      ),
                      FlatButton(
                        child: Text("-1", style: TextStyle(color: Colors.white, fontSize: 20)),
                        onPressed: () {
                          _changePeople(-1);
                        },
                      ),
                    ],
                  ),
                ),
                Text("$_restaurantStatus", textDirection: TextDirection.ltr, 
                  style: TextStyle(
                    color: Colors.white, 
                    fontStyle: FontStyle.italic,
                    fontSize: 30
                  ),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}