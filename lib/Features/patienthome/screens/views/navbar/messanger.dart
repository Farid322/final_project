import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/chat.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/widgets/custommessanger.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';

class MessangerPatient extends StatelessWidget {
  const MessangerPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        centerTitle: true,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          'Messenger',
          style: TextStyle(
            color: Color(0xFF35364F),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 0.40,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
            },
            child: customMessanger(
                'Mohamed Magdy',
                'It is a long established fact that a read and will be distracted lisece.',
                '23:37',
                Image.asset('assets/images/adamsmith .png')),
          ),
          customMessanger(
              'ahmed ali',
              'It is a long established fact that a read and will be distracted lisece.',
              '23:37',
              Image.asset('assets/images/patientpic1.png')),
          customMessanger(
              'muhammed ahmed',
              'It is a long established fact that a read and will be distracted lisece.',
              '23:37',
              Image.asset('assets/images/patientpic2.png')),
          customMessanger(
              'adam osama',
              'It is a long established fact that a read and will be distracted lisece.',
              '23:37',
              Image.asset(
                'assets/images/patientpic3.png',
                width: 46,
                height: 46,
              )),
        ],
      ),
      bottomNavigationBar: const NavBar(key: null),
    );
  }
}
