import 'package:flutter/material.dart';
import 'package:yugicardsets/UI/detail_card.dart';
import 'package:yugicardsets/model/card_list_model.dart';

import 'package:http/http.dart' as http;

class CardList extends StatelessWidget {
  final link;
  CardList(this.link);

  Future<List<CardDetail>> fetchInventPosts() async {
    final response = await http.get(
        'https://db.ygoprodeck.com/api/v5/cardinfo.php?set=$link&sort=atk');
    cardDetail = cardFromJson(response.body);
    return cardDetail;
  }

  void dispose() {
    cardDetail.clear();
  }

  navigate(context, index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailCard(index),
      ),
    );
  }

  Widget listView() {
    return ListView.builder(
      itemCount: cardDetail.length,
      itemBuilder: (context, index) {
        return _card(context, index);
      },
    );
  }

  Widget _card(context, index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: Image.network(cardDetail[index].cardImages[0].imageUrl),
          title: Text(cardDetail[index].name),
          subtitle: Row(
            children: <Widget>[
              cardDetail[index].atk != null
                  ? Text('${cardDetail[index].atk}/${cardDetail[index].def}')
                  : Text(cardDetail[index].type)
            ],
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            navigate(context, index);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(link),
      ),
      body: FutureBuilder(
        future: fetchInventPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return listView();
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
