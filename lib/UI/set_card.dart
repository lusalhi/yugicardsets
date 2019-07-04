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
                child: Image.asset('assets/hammam_kemeja1.jpg'),
                tag: '1',
              ),
              title: Text("Yugi's Deck List"),
              centerTitle: true,
            ),
            pinned: true,
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(yugiCard[index]),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardList(yugiCard[index]),
                    ),
                  );
                },
              );
            }, childCount: yugiCard.length),
          )
        ],
      ),
    );
  }
}
