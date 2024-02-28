import 'package:http/http.dart' as http;
import 'dart:convert';

class ScheduleApi {
  static const String apiUrl =
      'https://go.postman.co/workspace/My-Workspace~8d919377-14e7-42f3-8a05-b992e6f41d6c/documentation/32605469-63f4444f-b5c5-46bd-a783-a4ca7ff16c26?entity=request-f4e15ee2-b8ec-4e6c-b1cb-20f9b5e3ed18';

  Future<void> saveSchedule(ScheduleData scheduleData) async {
    final url = Uri.parse('$apiUrl/schedule');
    final headers = {'Content-Type': 'application/json'};
    final body = scheduleData.toJson();

    try {
      final response =
          await http.post(url, headers: headers, body: json.encode(body));
      if (response.statusCode == 200) {
        // Schedule saved successfully
        // Handle the response as needed
      } else {
        // Error occurred while saving schedule
        // Handle the error response
      }
    } catch (e) {
      // Handle network or server connection errors
    }
  }
}

class ScheduleData {
  final String date;
  final String startTime;
  final String endTime;
  final String category;
  final String note;

  ScheduleData({
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.category,
    required this.note,
  });

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'startTime': startTime,
      'endTime': endTime,
      'category': category,
      'note': note,
    };
  }
}
