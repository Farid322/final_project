import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/chat.dart';
import 'package:graduation_project/Features/patienthome/screens/views/accpted_result_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/My_session.dart';
import 'package:graduation_project/Features/patienthome/screens/views/session.dart';

void main() {
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
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
