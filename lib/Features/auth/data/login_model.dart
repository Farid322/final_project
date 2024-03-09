class LoginModel {
  LoginData? data;
  String? token;

  LoginModel({this.data, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new LoginData.fromJson(json['data']) : null;
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

class LoginData {
  String? sId;
  String? name;
  String? slug;
  String? email;
  String? password;
  String? phone;
  String? iD;
  String? location;
  int? experience;
  String? role;
  bool? isVerifiredID;
  int? iV;

  LoginData(
      {this.sId,
      this.name,
      this.slug,
      this.email,
      this.password,
      this.phone,
      this.iD,
      this.location,
      this.experience,
      this.role,
      this.isVerifiredID,
      this.iV});

  LoginData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    slug = json['slug'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    iD = json['ID'];
    location = json['location'];
    experience = json['experience'];
    role = json['role'];
    isVerifiredID = json['isVerifiredID'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['ID'] = this.iD;
    data['location'] = this.location;
    data['experience'] = this.experience;
    data['role'] = this.role;
    data['isVerifiredID'] = this.isVerifiredID;
    data['__v'] = this.iV;
    return data;
  }
}
