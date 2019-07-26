import 'package:flutter/material.dart';
import '../model/set_card_model.dart';
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
      title: Text(charSet[idx].title),
      centerTitle: true,
      background: Hero(
        tag: charSet[idx].idx,
        child: Image.network(
          charSet[idx].link,
        ),
      ),
    );
  }

  Widget sliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return _listTile(context, index);
      }, childCount: charSet[idx].list.length),
    );
  }

  Widget _listTile(context, index) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(charSet[idx].list[index]),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CardList(charSet[idx].list[index]),
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
