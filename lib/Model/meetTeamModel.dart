import 'dart:convert';

MeetTeam meetTeamFromJson(String str) => MeetTeam.fromJson(json.decode(str));

String meetTeamToJson(MeetTeam data) => json.encode(data.toJson());

class MeetTeam {
  MeetTeam({
    this.status,
    this.message,
    this.code,
    this.data,
  });

  String status;
  String message;
  int code;
  List<Datum> data;

  factory MeetTeam.fromJson(Map<String, dynamic> json) => MeetTeam(
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
    this.name,
    this.description,
    this.photo,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String description;
  String photo;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    photo: json["photo"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "photo": photo,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
