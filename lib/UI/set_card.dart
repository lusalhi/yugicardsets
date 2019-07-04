import 'package:flutter/material.dart';
import 'package:yugicardsets/model/set_card_model.dart';
import 'list_card.dart';

class Cardsets extends StatelessWidget {
  final charName;
  Cardsets(this.charName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                child: charName == 'yugi'
                    ? Container(
                        height: 500,
                        color: Colors.blue,
                      )
                    : charName == 'kaiba'
                        ? Container(
                            height: 500,
                            color: Colors.green,
                          )
                        : Container(
                            height: 500,
                            color: Colors.red,
                          ),
                tag: charName == 'yugi' ? "1" : charName == 'kaiba' ? "2" : "3",
              ),
              title: Text(charName == 'yugi'
                  ? "Yugi's Deck Collection"
                  : charName == 'kaiba'
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
                title: Text(charName == 'yugi'
                    ? yugiCard[index]
                    : charName == 'kaiba' ? kaibaCard[index] : joeyCard[index]),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardList(charName == 'yugi'
                          ? yugiCard[index]
                          : charName == 'kaiba'
                              ? kaibaCard[index]
                              : joeyCard[index]),
                    ),
                  );
                },
              );
            },
                childCount: charName == 'yugi'
                    ? yugiCard.length
                    : charName == 'kaiba' ? kaibaCard.length : joeyCard.length),
          )
        ],
      ),
    );
  }
}
