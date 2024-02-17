import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduation_project/Features/Doctorhome/screens/models/message.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/widgets/ChatBuble.dart';
import 'package:graduation_project/constant/constant.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  CollectionReference messeges =
      FirebaseFirestore.instance.collection(kMessegesCollection);
  TextEditingController controller = TextEditingController();
  final ScrollController _controller = ScrollController();

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: messeges.orderBy(kCreatedAt, descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Message> messegeslist = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              messegeslist.add(Message.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
              appBar: AppBar(
                toolbarHeight: 85,
                automaticallyImplyLeading: true,
                leading: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                shadowColor: const Color.fromARGB(0, 255, 255, 255),
                title: const Text(
                  'Adam Smith',
                  style: TextStyle(
                    color: Color(0xFF35364F),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    letterSpacing: 0.40,
                  ),
                ),
                centerTitle: true,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        reverse: true,
                        controller: _controller,
                        itemCount: messegeslist.length,
                        itemBuilder: (context, index) {
                          return ChatBubble(
                            message: messegeslist[index],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        messeges
                            .add({kmessege: data, kCreatedAt: DateTime.now()});
                        controller.clear();
                        _controller.animateTo(
                          0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.telegram,
                          size: 31,
                          color: kPrimaryColor,
                        ),
                        hintText: 'Type Your Message',
                        prefixIcon: const Icon(
                          Icons.emoji_emotions_outlined,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(31, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Text('Loading');
          }
        });
  }
}
