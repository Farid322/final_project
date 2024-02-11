import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';


class PatientLoginPage extends StatelessWidget {
  const PatientLoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 90.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 343.w,
                child:  Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).go(RouterNames.PatientRegisterPage);
                      },
                      child: const Icon(Icons.arrow_back)),
                    const Text(
                      ' Log in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Text(
                'Hello, welcome back to our account',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 46.h,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email adress',
                  )),
              SizedBox(
                height: 5.h,
              ),
              CustomTextFormField(hintText: 'ex.Email@gmail.com'),
              SizedBox(
                height: 33.h,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'password',
                  )),
              SizedBox(height: 5.h),
              CustomTextFormField(
                hintText: '......',
              ),
              SizedBox(
                height: 19.h,
              ),
              Row(
                children: [
                  const Text(
                    'Remember me',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 55.w,
                  ),
                   TextButton( onPressed: () {
                     GoRouter.of(context).go(RouterNames.ForgetPassword);
                   },
                     child: const Text(
                      'Forget password?',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                     ),
                   ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              const CustomButton(text: 'log_in'),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110.w,
                    child: const Divider(
                      color: Color(0xFF5D5D5D),
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                  const Text('OR'),
                  SizedBox(
                    width: 110.w,
                    child: const Divider(
                      color: Color(0xFF5D5D5D),
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              Container(
                width: 289.w,
                height: 45.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x21000000),
                      blurRadius: 13,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/google.svg',
                      height: 50,
                      width: 45,
                    ),
                    const Text('Login with Google')
                  ],
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Container(
                width: 289.w,
                height: 45.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x21000000),
                      blurRadius: 13,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Facebook.svg',
                      height: 50,
                      width: 45,
                    ),
                    const Text('Login with Facebook')
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              const Row(
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyle(
                        color: Color(0xFF737373),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'sign-up',
                    style: TextStyle(
                      color: Color(0xFF737373),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
