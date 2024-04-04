import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/chat.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/widgets/custommessanger.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/generated/l10n.dart';

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
        title: Text(
          S.of(context).Messenger,
          style: const TextStyle(
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
            child: customMessanger('Dr. Malek Khan', S.of(context).itis,
                '23:37', Image.asset('assets/images/adamsmith .png')),
          ),
          customMessanger('Dr. Nurjahan Khan', S.of(context).itis, '23:37',
              Image.asset('assets/images/patientpic1.png')),
          customMessanger('Dr. Raisa Rashid', S.of(context).itis, '23:37',
              Image.asset('assets/images/patientpic2.png')),
          customMessanger(
              'Dr. Salim Polash',
              S.of(context).itis,
              '23:37',
              Image.asset(
                'assets/images/patientpic3.png',
                width: 46,
                height: 46,
              )),
        ],
      ),
      bottomNavigationBar: const NavBarPatient(key: null),
    );
  }
}
