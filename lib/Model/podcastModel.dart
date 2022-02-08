// To parse this JSON data, do
//
//     final podcast = podcastFromJson(jsonString);

import 'dart:convert';

Podcast podcastFromJson(String str) => Podcast.fromJson(json.decode(str));

String podcastToJson(Podcast data) => json.encode(data.toJson());

class Podcast {
  Podcast({
    this.status,
    this.message,
    this.code,
    this.data,
  });

  String status;
  String message;
  int code;
  List<Datum> data;

  factory Podcast.fromJson(Map<String, dynamic> json) => Podcast(
    status: json["status"],
    message: json["message"],
    code: json["code"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "code": code,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.description,
    this.photo,
    this.audio,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String title;
  String description;
  String photo;
  String audio;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    photo: json["photo"],
    audio: json["audio"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "photo": photo,
    "audio": audio,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
