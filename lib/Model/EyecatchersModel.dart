class Eyecatchers {
  String status;
  String message;
  int code;
  List<Data> data;

  Eyecatchers({this.status, this.message, this.code, this.data});

  Eyecatchers.fromJson(Map<String, dynamic> json) {
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
  String horseName;
  String description;
  int status;
  String updatedAt;
  String createdAt;
  String photo;

  Data(
      {this.id,
        this.horseName,
        this.description,
        this.status,
        this.updatedAt,
        this.createdAt,
        this.photo});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    horseName = json['horse_name'];
    description = json['description'];
    status = json['status'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['horse_name'] = this.horseName;
    data['description'] = this.description;
    data['status'] = this.status;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['photo'] = this.photo;
    return data;
  }
}