import 'package:flutter/material.dart';
import 'package:yugicardsets/model/set_card_model.dart';
import 'list_card.dart';

class Cardsets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                child: charCheck == 'yugi'
                    ? Container(
                        height: 500,
                        color: Colors.blue,
                      )
                    : charCheck == 'kaiba'
                        ? Container(
                            height: 500,
                            color: Colors.green,
                          )
                        : Container(
                            height: 500,
                            color: Colors.red,
                          ),
                tag: charCheck == 'yugi' ? "1" : charCheck == 'kaiba' ? "2" : "3",
              ),
              title: Text(charCheck == 'yugi'
                  ? "Yugi's Deck Collection"
                  : charCheck == 'kaiba'
                      ? "Kaiba's Deck Collection"
                      : "Joey's Deck Collection"),
              centerTitle: true,
            ),
            pinned: true,
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(charCheck == 'yugi'
                    ? yugiCard[index]
                    : charCheck == 'kaiba' ? kaibaCard[index] : joeyCard[index]),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardList(charCheck == 'yugi'
                          ? yugiCard[index]
                          : charCheck == 'kaiba'
                              ? kaibaCard[index]
                              : joeyCard[index]),
                    ),
                  );
                },
              );
            },
                childCount: charCheck == 'yugi'
                    ? yugiCard.length
                    : charCheck == 'kaiba' ? kaibaCard.length : joeyCard.length),
          )
        ],
      ),
    );
  }
}
