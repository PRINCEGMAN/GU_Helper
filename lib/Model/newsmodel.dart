// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

List<News> newsFromJson(String str) => List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String newsToJson(List<News> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
  News({
    this.news,
    this.link,
    this.date,
    this.type,
  });

  String news;
  String link;
  String date;
  String type;

  factory News.fromJson(Map<String, dynamic> json) => News(
    news: json["NEWS"],
    link: json["LINK"],
    date: json["DATE"],
    type: json["TYPE"],
  );

  Map<String, dynamic> toJson() => {
    "NEWS": news,
    "LINK": link,
    "DATE": date,
    "TYPE": type,
  };
}