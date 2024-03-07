import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/generated/l10n.dart';

class ResetPasswordPatient extends StatelessWidget {
  const ResetPasswordPatient({super.key});
  static String id = 'ResetPassword';
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
            Text(
              S.of(context).Passwordchanged,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).yourpassword,
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
                GoRouter.of(context).go(RouterNames.PatientLoginPage);
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
                  child: Center(
                    child: Text(
                      S.of(context).Gobacktologin,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
