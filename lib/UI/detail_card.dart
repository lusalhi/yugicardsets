import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yugicardsets/model/card_list_model.dart';

class DetailCard extends StatelessWidget {
  final index;
  DetailCard(this.index);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget _detailContainer() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_image(), _space(), _detailCard()],
      ),
    );
  }

  Widget _image() {
    return Expanded(
      flex: 7,
      child: Container(
        child: Image.network(
          cardDetail[index].cardImages[0].imageUrl,
        ),
      ),
    );
  }

  Widget _space() {
    return Expanded(
      child: Container(
        height: 300,
      ),
      flex: 1,
    );
  }

  Widget _detailCard() {
    return Expanded(
      flex: 4,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _atkCard(),
            _space15(),
            _defCard(),
            _space15(),
            _typeCard(),
            _space15(),
            _raceCard(),
            _space15(),
            _levelCard()
          ],
        ),
      ),
    );
  }

  Widget _atkCard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'ATK:',
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w500),
          ),
          Text(cardDetail[index].atk == null ? '-' : cardDetail[index].atk),
        ],
      ),
    );
  }

  Widget _defCard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'DEF:',
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w500),
          ),
          Text(cardDetail[index].def == null ? '-' : cardDetail[index].def),
        ],
      ),
    );
  }

  Widget _typeCard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Type:',
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w500),
          ),
          Text(cardDetail[index].type),
        ],
      ),
    );
  }

  Widget _raceCard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Race:',
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w500),
          ),
          Text(cardDetail[index].race),
        ],
      ),
    );
  }

  Widget _levelCard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Level:',
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w500),
          ),
          Text(cardDetail[index].level == null ? '-' : cardDetail[index].level),
        ],
      ),
    );
  }

  Widget _space15() {
    return SizedBox(
      height: 15,
    );
  }

  Widget _divider() {
    return Divider(
      height: 8,
      color: Colors.black,
    );
  }

  Widget _descContainer() {
    return Expanded(
      child: Card(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Text(
                'Description:',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              _space15(),
              Text(
                cardDetail[index].desc,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    scheduleMicrotask(
      () => _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text('${cardDetail[index].name} selected!'),
          duration: Duration(seconds: 2),
        ),
      ),
    );
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(cardDetail[index].name),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          height: 750,
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              _detailContainer(),
              _divider(),
              _descContainer()
            ],
          ),
        ),
      ]),
    );
  }
}
