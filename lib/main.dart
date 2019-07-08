import 'package:flutter/material.dart';
import 'package:yugicardsets/UI/char_select.dart';
//import 'package:yugicardsets/UI/card_list.dart';
//import 'package:yugicardsets/UI/set_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CharPage(),
    );
  }
}
