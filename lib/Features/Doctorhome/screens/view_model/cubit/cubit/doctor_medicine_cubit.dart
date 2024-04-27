// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;

// import '../../../data/doctor_medicine_model.dart';

// class DoctorMedicineRepository {
//   Future<void> postDoctorMedicine(DoctorMedicineModel medicine) async {
//     final response = await http.post(
//       Uri.parse('your_api_endpoint_here'),
//       body: medicine.toJson(),
//     );
//     if (response.statusCode == 201) {
//       // يمكنك إجراء أي سلوك بعد النجاح هنا
//     } else {
//       throw Exception('Failed to post doctor medicine');
//     }
//   }
// }

// class DoctorMedicineCubit extends Cubit<bool> {
//   final DoctorMedicineRepository repository;

//   DoctorMedicineCubit(this.repository) : super(false);

//   Future<void> postDoctorMedicine(DoctorMedicineModel medicine) async {
//     try {
//       emit(true); // قم بتحديث حالة الـ Cubit إلى true لعرض شاشة التحميل
//       await repository.postDoctorMedicine(medicine);
//       emit(false); // عند الانتهاء، قم بتحديث حالة الـ Cubit إلى false
//     } catch (e) {
//       emit(false); // في حالة حدوث خطأ، قم بتحديث حالة الـ Cubit إلى false
//     }
//   }
// }
