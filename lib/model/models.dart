// To parse this JSON data, do

//     final albums = albumsFromJson(jsonString);

import 'dart:convert';

Albums albumsFromJson(String str) => Albums.fromJson(json.decode(str));

String albumsToJson(Albums data) => json.encode(data.toJson());

class Albums {
  Albums({
    required this.userId,
    required this.id,
    required this.title,
  });

  int userId;
  int id;
  String title;

  factory Albums.fromJson(Map<String, dynamic> json) => Albums(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
// nourmalUsers
class normalUserModel {
  int id;
  String title;
  normalUserModel({required this.id, required this.title});
}
