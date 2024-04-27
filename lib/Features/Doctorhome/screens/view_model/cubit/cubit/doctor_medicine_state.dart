// import 'dart:convert';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;

// class DoctorStatsRepository {
//   Future<int> fetchDoctorStats(String doctorId) async {
//     final response = await http.get(
//       Uri.parse('your_api_endpoint_here?doctorId=$doctorId'),
//     );
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       final int stats = data['stats'];
//       return stats;
//     } else {
//       throw Exception('Failed to fetch doctor stats');
//     }
//   }
// }

// class DoctorStatsCubit extends Cubit<int> {
//   final DoctorStatsRepository repository;

//   DoctorStatsCubit(this.repository) : super(0);

//   Future<void> fetchDoctorStats(String doctorId) async {
//     try {
//       final stats = await repository.fetchDoctorStats(doctorId);
//       emit(stats);
//     } catch (e) {
//       // يمكنك تنفيذ السلوك المناسب في حالة حدوث خطأ
//     }
//   }
// }
