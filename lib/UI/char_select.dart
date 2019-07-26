import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../model/set_card_model.dart';
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

  void navigateToCardSet(context, index) {
    idx = index;
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
            charSet[0].name,
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          Hero(
            tag: charSet[0].idx,
            child: Image.network(
              charSet[0].link,
              height: 300,
            ),
          ),
          RaisedButton(
            child: Text('Select'),
            onPressed: () {
              navigateToCardSet(context, 0);
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
            charSet[1].name,
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          Hero(
            tag: charSet[1].idx,
            child: Image.network(
              charSet[1].link,
              height: 300,
            ),
          ),
          RaisedButton(
            child: Text('Select'),
            onPressed: () {
              navigateToCardSet(context, 1);
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
            charSet[2].name,
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          Hero(
            tag: charSet[2].idx,
            child: Image.network(
              charSet[2].link,
              height: 300,
            ),
          ),
          RaisedButton(
            child: Text('Select'),
            onPressed: () {
              navigateToCardSet(context, 2);
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
      body: ListView(children: [
        Container(
          height: 600,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              yugiContainer(context),
              kaibaContainer(context),
              joeyContainer(context)
            ],
          ),
        ),
      ]),
    );
  }
}
