import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/routes/app_routes.dart';

import 'package:graduation_project/views/enter_code.dart';
import 'package:graduation_project/views/forget_password.dart';
import 'package:graduation_project/views/hemodialysis.dart';
import 'package:graduation_project/views/login.dart';
import 'package:graduation_project/views/logo.dart';
import 'package:graduation_project/views/patient_sign_up.dart';
import 'package:graduation_project/views/register.dart';
import 'package:graduation_project/views/sign_up_doctor.dart';
import 'package:graduation_project/views/sign_up_patient.dart';




void main() {
  runApp( const Hemodialysis());
}
class Hemodialysis extends StatelessWidget {
  const Hemodialysis({super.key});

  @override
  Widget build(BuildContext context) {
    return    const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
         home: PatientSignUp(),
      ),
    );
  }
}