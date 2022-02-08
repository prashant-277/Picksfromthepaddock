class InformTrainer {
  String status;
  String message;
  int code;
  List<Data> data;

  InformTrainer({this.status, this.message, this.code, this.data});

  InformTrainer.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    code = json['code'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  String wins;
  String run;
  String strikeRate;
  int status;
  String createdAt;
  String updatedAt;

  Data(
      {this.id,
        this.name,
        this.wins,
        this.run,
        this.strikeRate,
        this.status,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    wins = json['wins'];
    run = json['run'];
    strikeRate = json['strike_rate'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['wins'] = this.wins;
    data['run'] = this.run;
    data['strike_rate'] = this.strikeRate;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}