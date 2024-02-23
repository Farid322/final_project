import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

class ForgetPasswordDoctor extends StatelessWidget {
  const ForgetPasswordDoctor({super.key});
  static String id = 'forgetpassworddoctor';
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
              const Text(
                'Forget password ?',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              const Text(
                'please choose way from those options to rest your password',
                maxLines: 2,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              CustomButton(
                text: 'Send an email',
                onTap: () {
                  GoRouter.of(context).go(RouterNames.ErorremailDoctor);
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(20),
                    horizontal: ScreenUtil().setWidth(50)),
                child: Row(
                  children: [
                    const Text('Remember password ?'),
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).go(RouterNames.DoctorLoginPage);
                      },
                      child: const Text(
                        'login',
                        style: TextStyle(
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
