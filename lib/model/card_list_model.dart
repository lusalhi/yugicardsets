// To parse this JSON data, do
//
//     final card = cardFromJson(jsonString);

import 'dart:convert';

List<CardDetail> cardDetail = List();

List<CardDetail> cardFromJson(String str) => new List<CardDetail>.from(
    json.decode(str).map((x) => CardDetail.fromJson(x)));

class CardDetail {
  String id;
  String name;
  String type;
  String race;
  String desc;
  String atk;
  String def;
  String level;
  List<CardSet> cardSets;
  List<CardImage> cardImages;
  CardPrices cardPrices;

  CardDetail({
    this.id,
    this.name,
    this.type,
    this.desc,
    this.race,
    this.atk,
    this.def,
    this.level,
    this.cardSets,
    this.cardImages,
    this.cardPrices,
  });

  factory CardDetail.fromJson(Map<String, dynamic> json) => new CardDetail(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        race: json["race"],
        desc: json["desc"],
        atk: json["atk"],
        def: json["def"],
        level: json["level"],
        cardSets: new List<CardSet>.from(
            json["card_sets"].map((x) => CardSet.fromJson(x))),
        cardImages: new List<CardImage>.from(
            json["card_images"].map((x) => CardImage.fromJson(x))),
        cardPrices: CardPrices.fromJson(json["card_prices"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "desc": desc,
        "card_sets": new List<dynamic>.from(cardSets.map((x) => x.toJson())),
        "card_images":
            new List<dynamic>.from(cardImages.map((x) => x.toJson())),
        "card_prices": cardPrices.toJson(),
      };
}

class CardImage {
  String id;
  String imageUrl;
  String imageUrlSmall;

  CardImage({
    this.id,
    this.imageUrl,
    this.imageUrlSmall,
  });

  factory CardImage.fromJson(Map<String, dynamic> json) => new CardImage(
        id: json["id"],
        imageUrl: json["image_url"],
        imageUrlSmall: json["image_url_small"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image_url": imageUrl,
        "image_url_small": imageUrlSmall,
      };
}

class CardPrices {
  String cardmarketPrice;
  String tcgplayerPrice;
  String ebayPrice;
  String amazonPrice;

  CardPrices({
    this.cardmarketPrice,
    this.tcgplayerPrice,
    this.ebayPrice,
    this.amazonPrice,
  });

  factory CardPrices.fromJson(Map<String, dynamic> json) => new CardPrices(
        cardmarketPrice: json["cardmarket_price"],
        tcgplayerPrice: json["tcgplayer_price"],
        ebayPrice: json["ebay_price"],
        amazonPrice: json["amazon_price"],
      );

  Map<String, dynamic> toJson() => {
        "cardmarket_price": cardmarketPrice,
        "tcgplayer_price": tcgplayerPrice,
        "ebay_price": ebayPrice,
        "amazon_price": amazonPrice,
      };
}

class CardSet {
  String setName;
  String setCode;
  String setRarity;
  String setPrice;

  CardSet({
    this.setName,
    this.setCode,
    this.setRarity,
    this.setPrice,
  });

  factory CardSet.fromJson(Map<String, dynamic> json) => new CardSet(
        setName: json["set_name"],
        setCode: json["set_code"],
        setRarity: json["set_rarity"],
        setPrice: json["set_price"],
      );

  Map<String, dynamic> toJson() => {
        "set_name": setName,
        "set_code": setCode,
        "set_rarity": setRarity,
        "set_price": setPrice,
      };
}
