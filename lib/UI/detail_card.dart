import 'package:flutter/material.dart';
import 'package:yugicardsets/model/card_list_model.dart';

class DetailCard extends StatelessWidget {
  final index;
  DetailCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tes'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Card(
              child: Image.network(
                cardDetail[index].cardImages[0].imageUrl,
                width: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
