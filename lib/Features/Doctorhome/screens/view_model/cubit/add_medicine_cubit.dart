import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:graduation_project/Features/Doctorhome/screens/models/medicine_model.dart';
import 'package:graduation_project/Features/Doctorhome/screens/view_model/cubit/add_medicine_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddMedicineCubit extends Cubit<AddMedicineState> {
  late SharedPreferences pref;
  AddMedicineCubit() : super(const AddMedicineState([])) {
    _loadMedinicen();
  }
  Future<void> getMedicineList() async {
    pref = await SharedPreferences.getInstance();
    List<String>? jsonMedicine = pref.getStringList("medinicnes");

    if (jsonMedicine != null) {
      List<MedicineModel> medinicnes = jsonMedicine
          .map((json) => MedicineModel.fromJson(jsonDecode(json)))
          .toList();
      emit(AddMedicineState(medinicnes));
    }
  }

  Future<void> saveMedicines(List<MedicineModel> medinicens) async {
    pref = await SharedPreferences.getInstance();
    List<String> jsonMedicines =
        medinicens.map((medinicen) => jsonEncode(medinicen.toJson())).toList();
    await pref.setStringList("medinicen", jsonMedicines);
  }

  void addMedicine(String medinicen) {
    final List<MedicineModel> updateMedicines = List.from(state.medicines)
      ..add(MedicineModel(medicine: medinicen));
    emit(AddMedicineState(updateMedicines));
    saveMedicines(updateMedicines);
  }

  void updateMedinicne(
    int index,
    String medinicne,
  ) {
    final List<MedicineModel> updateMedicines = List.from(state.medicines)
      ..removeAt(index)
      ..insert(index, MedicineModel(medicine: medinicne));
    emit(AddMedicineState(updateMedicines));
    saveMedicines(updateMedicines);
  }

  Future<void> _loadMedinicen() async {
    pref = await SharedPreferences.getInstance();
    List<String>? jsonMedicine = pref.getStringList("medinicnes");

    if (jsonMedicine != null) {
      List<MedicineModel> medinicnes = jsonMedicine
          .map((json) => MedicineModel.fromJson(jsonDecode(json)))
          .toList();
      emit(AddMedicineState(medinicnes));
    }
  }
}
