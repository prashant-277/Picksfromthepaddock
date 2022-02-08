// To parse this JSON data, do
//
//     final longestTravellersModel = longestTravellersModelFromJson(jsonString);

import 'dart:convert';

LongestTravellersModel longestTravellersModelFromJson(String str) => LongestTravellersModel.fromJson(json.decode(str));

String longestTravellersModelToJson(LongestTravellersModel data) => json.encode(data.toJson());

class LongestTravellersModel {
  LongestTravellersModel({
    this.status,
    this.message,
    this.code,
    this.data,
  });

  String status;
  String message;
  int code;
  List<Datum> data;

  factory LongestTravellersModel.fromJson(Map<String, dynamic> json) => LongestTravellersModel(
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
    this.distance,
    this.horseId,
    this.track,
    this.time,
    this.grade,
    this.prizeMoney,
    this.trainerId,
    this.jockeyId,
    this.latestOdds,
    this.createdAt,
    this.updatedAt,
    this.horseInfo,
    this.jockeyInfo,
    this.trainerInfo,
  });

  int id;
  String distance;
  int horseId;
  String track;
  String time;
  String grade;
  String prizeMoney;
  int trainerId;
  int jockeyId;
  String latestOdds;
  DateTime createdAt;
  DateTime updatedAt;
  HorseInfo horseInfo;
  Info jockeyInfo;
  Info trainerInfo;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    distance: json["distance"],
    horseId: json["horse_id"],
    track: json["track"],
    time: json["time"],
    grade: json["grade"],
    prizeMoney: json["prize_money"],
    trainerId: json["trainer_id"],
    jockeyId: json["jockey_id"],
    latestOdds: json["latest_odds"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    horseInfo: HorseInfo.fromJson(json["horse_info"]),
    jockeyInfo: Info.fromJson(json["jockey_info"]),
    trainerInfo: Info.fromJson(json["trainer_info"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "distance": distance,
    "horse_id": horseId,
    "track": track,
    "time": time,
    "grade": grade,
    "prize_money": prizeMoney,
    "trainer_id": trainerId,
    "jockey_id": jockeyId,
    "latest_odds": latestOdds,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "horse_info": horseInfo.toJson(),
    "jockey_info": jockeyInfo.toJson(),
    "trainer_info": trainerInfo.toJson(),
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
  DateTime createdAt;

  factory HorseInfo.fromJson(Map<String, dynamic> json) => HorseInfo(
    id: json["id"],
    horseName: json["horse_name"],
    description: json["description"],
    status: json["status"],
    photo: json["photo"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "horse_name": horseName,
    "description": description,
    "status": status,
    "photo": photo,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
  };
}

class Info {
  Info({
    this.id,
    this.name,
    this.wins,
    this.run,
    this.strikeRate,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String wins;
  String run;
  String strikeRate;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    id: json["id"],
    name: json["name"],
    wins: json["wins"],
    run: json["run"],
    strikeRate: json["strike_rate"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "wins": wins,
    "run": run,
    "strike_rate": strikeRate,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
