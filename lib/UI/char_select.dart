import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yugicardsets/model/set_card_model.dart';
import 'set_card.dart';

class CharPage extends StatelessWidget {
  void navigateToCardSet(context, name) {
    charCheck = name;
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
      appBar: AppBar(
        title: Text('Select Character'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.bottomCenter,
          color: Colors.yellow,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topCenter,
                width: 300,
                color: Colors.red[700],
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
                      child: Container(
                        color: Colors.blue,
                        height: 400,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      child: Text('Select'),
                      onPressed: () {
                        navigateToCardSet(context, 'yugi');
                      },
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topCenter,
                width: 300,
                color: Colors.blue[700],
                child: Column(
                  children: <Widget>[
                    Text(
                      'Kaiba',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Hero(
                      tag: '2',
                      child: Container(
                        color: Colors.green,
                        height: 400,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      child: Text('Select'),
                      onPressed: () {
                        navigateToCardSet(context, 'kaiba');
                      },
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.topCenter,
                width: 300,
                color: Colors.green[700],
                child: Column(
                  children: <Widget>[
                    Text(
                      'Joey',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Hero(
                      tag: '3',
                      child: Container(
                        color: Colors.red,
                        height: 400,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      child: Text('Select'),
                      onPressed: () {
                        navigateToCardSet(context, 'joey');
                      },
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
