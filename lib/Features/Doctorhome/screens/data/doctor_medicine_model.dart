class DoctorMedicineModel {
  String? patient;
  String? medicineName;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  DoctorMedicineModel(
      {this.patient,
      this.medicineName,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  DoctorMedicineModel.fromJson(Map<String, dynamic> json) {
    patient = json['patient'];
    medicineName = json['medicineName'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['patient'] = this.patient;
    data['medicineName'] = this.medicineName;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
