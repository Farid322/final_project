import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/routes/app_routes.dart';
import 'package:graduation_project/views/sign_up_patient.dart';




void main() {
  runApp( const Hemodialysis());
}
class Hemodialysis extends StatelessWidget {
  const Hemodialysis({super.key});

  @override
  Widget build(BuildContext context) {
    return     ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}