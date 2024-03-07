import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/generated/l10n.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  static String id = 'ForgetPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: ScreenUtil().setHeight(200),
              horizontal: ScreenUtil().setWidth(50)),
          child: Column(
            children: [
              Image.asset('assets/images/Character.jpg'),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Text(
                S.of(context).Forgetpassword,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                S.of(context).Pleasechoose,
                maxLines: 2,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              CustomButton(
                text: S.of(context).Sendanemail,
                onTap: () {
                  GoRouter.of(context).go(RouterNames.Erorremail);
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(20),
                    horizontal: ScreenUtil().setWidth(40)),
                child: Row(
                  children: [
                    Text(S.of(context).Rememberpassword),
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).go(RouterNames.DoctorLoginPage);
                      },
                      child: Text(
                        S.of(context).loginP,
                        style: const TextStyle(
                          color: Color(0xFF737373),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
