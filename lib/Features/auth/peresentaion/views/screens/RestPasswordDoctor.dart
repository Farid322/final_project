import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

class ResetPasswordDoctor extends StatelessWidget {
  const ResetPasswordDoctor({super.key});
  static String id = 'ResetPassworddoctor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E5C6D),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(50),
            vertical: ScreenUtil().setHeight(120)),
        child: Column(
          children: [
            Image.asset('assets/images/forgot password illustration.png'),
            const SizedBox(
              height: 53,
            ),
            const Text(
              'password changed',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Your password has been changed successfully',
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.800000011920929),
                  fontSize: 14),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(45),
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).go(RouterNames.DoctorLoginPage);
              },
              child: Container(
                  width: ScreenUtil().setWidth(330),
                  height: ScreenUtil().setHeight(52),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x1EA6A6A6),
                        blurRadius: 40,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Go back to login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF496664),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
