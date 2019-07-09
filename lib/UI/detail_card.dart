import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yugicardsets/model/card_list_model.dart';

class DetailCard extends StatefulWidget {
  final index;
  DetailCard(this.index);

  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  _DetailCardState() {
    scheduleMicrotask(
      () => _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text('${cardDetail[widget.index].name} selected!'),
              duration: Duration(seconds: 2),
            ),
          ),
    );
  }

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
          cardDetail[widget.index].cardImages[0].imageUrl,
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
          Text(cardDetail[widget.index].atk == null
              ? '-'
              : cardDetail[widget.index].atk),
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
          Text(cardDetail[widget.index].def == null
              ? '-'
              : cardDetail[widget.index].def),
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
          Text(cardDetail[widget.index].type),
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
          Text(cardDetail[widget.index].race),
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
          Text(cardDetail[widget.index].level == null
              ? '-'
              : cardDetail[widget.index].level),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                cardDetail[widget.index].desc,
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
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(cardDetail[widget.index].name),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[_detailContainer(), _divider(), _descContainer()],
        ),
      ),
    );
  }
}
