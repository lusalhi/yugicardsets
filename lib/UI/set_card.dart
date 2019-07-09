import 'package:flutter/material.dart';
import 'package:yugicardsets/model/set_card_model.dart';
import 'list_card.dart';

class Cardsets extends StatelessWidget {
  Widget sliverAppBar() {
    return SliverAppBar(
        backgroundColor: Colors.black87,
        pinned: true,
        expandedHeight: 200,
        flexibleSpace: flexibleSpace());
  }

  Widget flexibleSpace() {
    return FlexibleSpaceBar(
      title: Text(charCheck == 'yugi'
          ? "Yugi's Card Set"
          : charCheck == 'kaiba' ? "Kaiba's Card Set" : "Joey's Card Set"),
      centerTitle: true,
      background: Hero(
          tag: charCheck == 'yugi' ? "1" : charCheck == 'kaiba' ? "2" : "3",
          child: charCheck == 'yugi'
              ? Image.network(
                  'https://uploads3.yugioh.com/character/3/detail/detail/yamiyugi-l.png?1371744397',
                )
              : charCheck == 'kaiba'
                  ? Image.network(
                      'https://uploads4.yugioh.com/character/11/detail/detail/kaib-l.png?1375717119',
                    )
                  : Image.network(
                      'https://uploads2.yugioh.com/character/5/detail/detail/joey-l.png?1375717061',
                    )),
    );
  }

  Widget sliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return _listTile(context, index);
      },
          childCount: charCheck == 'yugi'
              ? yugiCard.length
              : charCheck == 'kaiba' ? kaibaCard.length : joeyCard.length),
    );
  }

  Widget _listTile(context, index) {
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
                : charCheck == 'kaiba' ? kaibaCard[index] : joeyCard[index]),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[sliverAppBar(), sliverList()],
      ),
    );
  }
}
