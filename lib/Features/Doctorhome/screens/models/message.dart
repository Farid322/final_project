import 'package:graduation_project/constant/constant.dart';

class Message {
  final String message;
  Message(this.message);
  factory Message.fromJson(jasonData) {
    return Message(jasonData[kmessege]);
  }
}
