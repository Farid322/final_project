import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/Notification.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/home.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/messanger.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/setting.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/views/navbar/Notification.dart';
import 'package:graduation_project/Features/patienthome/screens/views/navbar/messanger.dart';
import 'package:graduation_project/Features/patienthome/screens/views/setting_pages/patient_home.dart';
import 'package:graduation_project/Features/patienthome/screens/views/setting_pages/setting.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
// Import your screens

class AppWrapperPatient extends StatelessWidget {
  const AppWrapperPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          // Add your screens here
          PatientHome(),
          NotificationScreenPatient(),
          MessangerPatient(),
          SettingPagePatient(),
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
