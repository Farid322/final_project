import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

void main() {
  runApp( const Hemodialysis());
}
class Hemodialysis extends StatelessWidget {
  const Hemodialysis({super.key});

  @override
  Widget build(BuildContext context) {
    return      ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}