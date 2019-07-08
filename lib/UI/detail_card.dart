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
    scheduleMicrotask(() => _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text('Hey!'),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('tes'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Container(
                      child: Image.network(
                        cardDetail[widget.index].cardImages[0].imageUrl,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      alignment: Alignment.topLeft,
                      height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'ATK:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('2000'),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'DEF:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('3000'),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Type:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('Dragon'),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Level:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('9')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Container(),
              height: 10,
            ),
            Container(
              child: Expanded(
                child: Container(
                  child: Text(
                      'Deskripsiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
