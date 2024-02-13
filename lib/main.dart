import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Features/patienthome/screens/views/accpted_result_page.dart';

void main() {
  runApp( const Hemodialysis());
}
class Hemodialysis extends StatelessWidget {
  const Hemodialysis({super.key});

  @override
  Widget build(BuildContext context) {
    return      const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        home: AccptedResultPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}