// ignore_for_file: constant_identifier_names

class MedicineModel {
  final String medicine;

  MedicineModel({
    required this.medicine,
  });

  // Convert ReminderModel to Map
  Map<String, dynamic> toJson() {
    return {
      'medicine': medicine,
    };
  }

  // Create ReminderModel from Map
  factory MedicineModel.fromJson(Map<String, dynamic> json) {
    return MedicineModel(
      medicine: json['medicine'],
    );
  }
}
