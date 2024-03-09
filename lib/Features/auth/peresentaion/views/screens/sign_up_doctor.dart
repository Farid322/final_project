import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/auth/view_model/cubit/signup_doctor_cubit.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/core/widgets/custom_text_form_field.dart';

import '../../../../../core/funcations/show_toast.dart';

class SignUpdoctor extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  SignUpdoctor({super.key});
  static String id = 'SignUpdoctor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 343,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          GoRouter.of(context)
                              .go(RouterNames.DoctorRegisterPage);
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      'Create account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'UserName',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(hintText: 'Your User Name'),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email address',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(hintText: 'Your email'),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Country code',
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextFormField(
                          hintText: '+012',
                          width: 60,
                          height: 56,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 201,
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Mobile Number',
                              maxLines: 1,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextFormField(
                          hintText: '010',
                          width: 150,
                          height: 56,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(hintText: 'Enter Your Password'),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm Password',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(hintText: 'Enter Your Password Again'),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ID',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(hintText: 'Your ID'),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'location',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(hintText: 'Your Location'),
              const SizedBox(
                height: 30,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Exprience',
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(hintText: 'ex.7years'),
              const SizedBox(
                height: 64,
              ),
              CustomButton(
                text: 'Sign Up',
                onTap: () {
                  GoRouter.of(context).go(RouterNames.DoctorHome);
                },
              ),
              const SizedBox(
                height: 47,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: Divider(
                      color: Color(0xFF5D5D5D),
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                  Text('OR'),
                  SizedBox(
                    width: 110,
                    child: Divider(
                      color: Color(0xFF5D5D5D),
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 289,
                height: 45,
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
                    const Text('Register with Google')
                  ],
                ),
              ),
              const SizedBox(height: 13),
              Container(
                width: 289,
                height: 45,
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
                    const Text('Register with Facebook')
                  ],
                ),
              ),
              const SizedBox(
                height: 39,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(65)),
                child: Row(
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: Color(0xFF737373),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
