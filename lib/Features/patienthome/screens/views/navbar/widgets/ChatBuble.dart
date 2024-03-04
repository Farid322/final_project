import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/models/message.dart';
import 'package:graduation_project/constant/constant.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 30),
          child: Image.asset(
            'assets/images/Rectangle 78.png',
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding:
                const EdgeInsets.only(left: 16, top: 30, bottom: 30, right: 30),
            margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: Text(
              message.message,
              style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ],
    );
  }
}
