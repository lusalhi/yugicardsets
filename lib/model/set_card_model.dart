int idx;

List<CharSetting> charSet = [
  CharSetting(
      idx: 1,
      name: 'Yami Yugi',
      title: "Yugi's Card Set",
      link:
          'https://uploads3.yugioh.com/character/3/detail/detail/yamiyugi-l.png?1371744397',
      list: [
        "Duelist Pack: Yugi",
        "Legendary Collection 3: Yugi's World",
        "Legendary Collection 3: Yugi's World Mega Pack",
        "Starter Deck: Yugi",
        "Starter Deck: Yugi Evolution",
        "Starter Deck: Yugi Reloaded",
        "Structure Deck: Yugi Muto",
        "Yu-Gi-Oh! Power of Chaos: Yugi the Destiny promotional cards",
        "Yugi & Kaiba Collector Box",
        "Yugi's Legendary Decks"
      ]),
  CharSetting(
      idx: 2,
      name: 'Seto Kaiba',
      title: "Kaiba's Card Set",
      link:
          'https://uploads4.yugioh.com/character/11/detail/detail/kaib-l.png?1375717119',
      list: [
        "Duelist Pack: Kaiba",
        "Kaiba's Collector Box",
        "Legendary Collection Kaiba",
        "Legendary Collection Kaiba Mega Pack",
        "Starter Deck: Kaiba",
        "Starter Deck: Kaiba Evolution",
        "Starter Deck: Kaiba Reloaded",
        "Structure Deck: Seto Kaiba",
        "Yu-Gi-Oh! Power of Chaos: Kaiba the Revenge promotional cards",
        "Yugi & Kaiba Collector Box"
      ]),
  CharSetting(
      idx: 3,
      name: 'Joey Wheeler',
      title: "Joey's Card Set",
      link:
          'https://uploads2.yugioh.com/character/5/detail/detail/joey-l.png?1375717061',
      list: [
        "Legendary Collection 4: Joey's World",
        "Legendary Collection 4: Joey's World Mega Pack",
        "Starter Deck: Joey",
        "Yu-Gi-Oh! Power of Chaos: Joey the Passion promotional cards"
      ])
];

class CharSetting {
  final int idx;
  final String name;
  final String title;
  final String link;
  final List list;

  CharSetting({this.idx, this.name, this.title, this.link, this.list});
}
