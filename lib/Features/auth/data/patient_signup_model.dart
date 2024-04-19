class PatientSignUpModel {
  Data? data;
  String? token;

  PatientSignUpModel({this.data, this.token});

  PatientSignUpModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Data {
  String? username;
  String? email;
  String? password;
  String? mobileNumber;
  int? age;
  String? gender;
  int? barcode;
  int? loginCount;
  int? movingPointer;
  int? totalSessions;
  int? completedSessions;
  int? delayedSessions;
  int? weeklySessionHours;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.username,
      this.email,
      this.password,
      this.mobileNumber,
      this.age,
      this.gender,
      this.barcode,
      this.loginCount,
      this.movingPointer,
      this.totalSessions,
      this.completedSessions,
      this.delayedSessions,
      this.weeklySessionHours,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
    mobileNumber = json['mobileNumber'];
    age = json['age'];
    gender = json['gender'];
    barcode = json['barcode'];
    loginCount = json['loginCount'];
    movingPointer = json['movingPointer'];
    totalSessions = json['totalSessions'];
    completedSessions = json['completedSessions'];
    delayedSessions = json['delayedSessions'];
    weeklySessionHours = json['weeklySessionHours'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['mobileNumber'] = this.mobileNumber;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['barcode'] = this.barcode;
    data['loginCount'] = this.loginCount;
    data['movingPointer'] = this.movingPointer;
    data['totalSessions'] = this.totalSessions;
    data['completedSessions'] = this.completedSessions;
    data['delayedSessions'] = this.delayedSessions;
    data['weeklySessionHours'] = this.weeklySessionHours;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}