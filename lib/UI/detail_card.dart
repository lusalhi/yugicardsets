import 'package:flutter/material.dart';
import 'package:yugicardsets/model/card_list_model.dart';

class DetailCard extends StatelessWidget {
  final index;
  DetailCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 200),
                alignment: Alignment.topCenter,
              ),
              Expanded(
                flex: 5,
                child: Card(
                  color: Colors.blue,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 60),
                    alignment: Alignment.topCenter,
                    child: Text(cardDetail[index].name),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            alignment: Alignment.topCenter,
            child: Card(
              child: Image.network(
                cardDetail[index].cardImages[0].imageUrl,
                height: 400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
