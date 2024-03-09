class SignupModel {
  SignupData? data;
  String? token;

  SignupModel({this.data, this.token});

  SignupModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new SignupData.fromJson(json['data']) : null;
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

class SignupData {
  String? name;
  String? slug;
  String? email;
  String? phone;
  String? iD;
  String? location;
  int? experience;
  String? role;
  bool? isVerifiredID;
  String? sId;
  int? iV;

  SignupData(
      {this.name,
      this.slug,
      this.email,
      this.phone,
      this.iD,
      this.location,
      this.experience,
      this.role,
      this.isVerifiredID,
      this.sId,
      this.iV});

  SignupData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    email = json['email'];
    phone = json['phone'];
    iD = json['ID'];
    location = json['location'];
    experience = json['experience'];
    role = json['role'];
    isVerifiredID = json['isVerifiredID'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['ID'] = this.iD;
    data['location'] = this.location;
    data['experience'] = this.experience;
    data['role'] = this.role;
    data['isVerifiredID'] = this.isVerifiredID;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}
