import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/Notification.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/home.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/messanger.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/patient_home.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/setting.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/NavBarPatient.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
// Import your screens

class AppWrapper extends StatelessWidget {
  const AppWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          // Add your screens here
          PatientHome(),
          NotificationScreen(),
          Messanger(),
          SettingPage(),
          // ...

          // Add the NavBar widget at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: NavBarPatient(),
          ),
        ],
      ),
    );
  }
}
