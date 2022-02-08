// To parse this JSON data, do
//
//     final tips = tipsFromJson(jsonString);

import 'dart:convert';

Tips tipsFromJson(String str) => Tips.fromJson(json.decode(str));

String tipsToJson(Tips data) => json.encode(data.toJson());

class Tips {
  Tips({
    this.status,
    this.message,
    this.code,
    this.data,
  });

  String status;
  String message;
  int code;
  List<Datum> data;

  factory Tips.fromJson(Map<String, dynamic> json) => Tips(
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
    this.status,
    this.writtenBy,
    this.place,
    this.horseId,
    this.createdAt,
    this.updatedAt,
    this.horseInfo,
  });

  int id;
  String title;
  String description;
  String photo;
  int status;
  String writtenBy;
  String place;
  int horseId;
  DateTime createdAt;
  DateTime updatedAt;
  HorseInfo horseInfo;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    photo: json["photo"],
    status: json["status"],
    writtenBy: json["written_by"],
    place: json["place"],
    horseId: json["horse_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    horseInfo: HorseInfo.fromJson(json["horse_info"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "photo": photo,
    "status": status,
    "written_by": writtenBy,
    "place": place,
    "horse_id": horseId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "horse_info": horseInfo.toJson(),
  };
}

class HorseInfo {
  HorseInfo({
    this.id,
    this.horseName,
    this.description,
    this.status,
    this.photo,
    this.updatedAt,
    this.createdAt,
  });

  int id;
  String horseName;
  String description;
  int status;
  String photo;
  DateTime updatedAt;
  String createdAt;

  factory HorseInfo.fromJson(Map<String, dynamic> json) => HorseInfo(
    id: json["id"],
    horseName: json["horse_name"],
    description: json["description"],
    status: json["status"],
    photo: json["photo"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "horse_name": horseName,
    "description": description,
    "status": status,
    "photo": photo,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt,
  };
}
