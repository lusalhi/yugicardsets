import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yugicardsets/model/set_card_model.dart';
import 'set_card.dart';

class CharPage extends StatelessWidget {
  void _showDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Exit Dialog'),
            content: Text('Exit Application?'),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  exit(0);
                },
              ),
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void navigateToCardSet(context, name) {
    charCheck = name;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cardsets(),
      ),
    );
  }

  Widget yugiContainer(context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: 300,
      color: Colors.red[700],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Yami Yugi',
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          Hero(
            tag: '1',
            child: Image.network(
              'https://uploads3.yugioh.com/character/3/detail/detail/yamiyugi-l.png?1371744397',
              height: 300,
            ),
          ),
          RaisedButton(
            child: Text('Select'),
            onPressed: () {
              navigateToCardSet(context, 'yugi');
            },
          )
        ],
      ),
    );
  }

  Widget kaibaContainer(context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: 300,
      color: Colors.blue[700],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Seto Kaiba',
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          Hero(
            tag: '2',
            child: Image.network(
              'https://uploads4.yugioh.com/character/11/detail/detail/kaib-l.png?1375717119',
              height: 300,
            ),
          ),
          RaisedButton(
            child: Text('Select'),
            onPressed: () {
              navigateToCardSet(context, 'kaiba');
            },
          )
        ],
      ),
    );
  }

  Widget joeyContainer(context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: 300,
      color: Colors.green[700],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Joey Wheeler',
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          Hero(
            tag: '3',
            child: Image.network(
              'https://uploads2.yugioh.com/character/5/detail/detail/joey-l.png?1375717061',
              height: 300,
            ),
          ),
          RaisedButton(
            child: Text('Select'),
            onPressed: () {
              navigateToCardSet(context, 'joey');
            },
          )
        ],
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
            onPressed: () {
              _showDialog(context);
            },
          )
        ],
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            yugiContainer(context),
            kaibaContainer(context),
            joeyContainer(context)
          ],
        ),
      ),
    );
  }
}
