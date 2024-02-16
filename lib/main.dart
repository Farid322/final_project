import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Features/Doctorhome/screens/firebase_options.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/chat.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/patient_login.dart';
import 'package:graduation_project/Features/patienthome/screens/views/accpted_result_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/My_session.dart';
import 'package:graduation_project/Features/patienthome/screens/views/session.dart';
import 'package:graduation_project/Features/patienthome/screens/views/patient_profile.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Hemodialysis());
}

class Hemodialysis extends StatelessWidget {
  const Hemodialysis({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        home: ChatScreen(),
      )
      );
  }
}
