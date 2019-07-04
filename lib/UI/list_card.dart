import 'package:flutter/material.dart';
import 'package:yugicardsets/UI/detail_card.dart';
import 'package:yugicardsets/model/card_list_model.dart';

import 'package:http/http.dart' as http;

class CardList extends StatefulWidget {
  final link;
  CardList(this.link);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  Future<List<CardDetail>> fetchInventPosts() async {
    final response = await http.get(
        'https://db.ygoprodeck.com/api/v5/cardinfo.php?set=${widget.link}');
    // compute function to run parsePosts in a separate isolate
    cardDetail = cardFromJson(response.body);
    return cardDetail;
  }

  @override
  void dispose() {
    super.dispose();
    cardDetail.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.link),
      ),
      body: FutureBuilder(
        future: fetchInventPosts(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: cardDetail.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    (index + 1).toString(),
                  ),
                ),
                title: Text(cardDetail[index].name),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailCard(index),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
