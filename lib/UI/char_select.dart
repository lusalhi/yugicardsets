import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'set_card.dart';

class CharPage extends StatelessWidget {
  void navigateToCardSet(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cardsets(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.bottomCenter,
          color: Colors.yellow,
          height: 600,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topCenter,
                width: 300,
                color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Yugi',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Hero(
                      tag: '1',
                      child: Image.asset(
                        'assets/hammam_kemeja1.jpg',
                        height: 400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      child: Text('Select'),
                      onPressed: () {
                        navigateToCardSet(context);
                      },
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topCenter,
                width: 300,
                color: Colors.blue,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Kaiba',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Placeholder(
                      fallbackHeight: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      child: Text('Select'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topCenter,
                width: 300,
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Joey',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Placeholder(
                      fallbackHeight: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      child: Text('Select'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
