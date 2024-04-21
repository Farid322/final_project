import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import '../../../../../core/funcations/show_toast.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/Features/auth/view_model/cubit/login_cubit.dart';

class DoctorLoginPage extends StatefulWidget {
  DoctorLoginPage({super.key});

  @override
  State<DoctorLoginPage> createState() => _DoctorLoginPageState();
}

class _DoctorLoginPageState extends State<DoctorLoginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool rememberMe = false;
    void _onRememberMeChanged(bool? newValue) {
      setState(() {
        rememberMe = newValue ?? false;
        if (rememberMe) {
          // TODO: Implement functionality to remember the user
          print("User wants to be remembered");
        } else {
          // TODO: Implement functionality to forget the user
          print("User does not want to be remembered");
        }
      });
    }

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is LoginSuccess || current is LoginFailure,
        listener: (context, state) {
          if (state is LoginSuccess) {
            GoRouter.of(context).push(RouterNames.DoctorHome);
          } else if (state is LoginFailure) {
            showToast(message: state.errMsg, state: ToastStates.ERROR);
          }
          // TODO: implement listener
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 90.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 343.w,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              GoRouter.of(context)
                                  .go(RouterNames.DoctorRegisterPage);
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
                    'Hello, welcome back to your account',
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
                  CustomTextFormField(
                      hintText: 'Enter Your Email',
                      textEditingController: _emailController),
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
                    hintText: 'Enter Your Password',
                    textEditingController: _passWordController,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Checkbox(
                          shape: const CircleBorder(),
                          activeColor: kPrimaryColor,
                          value: rememberMe,
                          onChanged: _onRememberMeChanged,
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(80),
                        ),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .go(RouterNames.ForgetPasswordDoctor);
                          },
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  BlocBuilder<LoginCubit, LoginState>(
                    buildWhen: (previous, current) =>
                        current is LoginSuccess ||
                        current is LoginFailure ||
                        current is LoginLoading,
                    builder: (context, state) {
                      return CustomButton(
                        text: 'Log-In',
                        onTap: () {
                          BlocProvider.of<LoginCubit>(context).userLogin(
                              email: _emailController.text,
                              passWord: _passWordController.text);
                        },
                      );
                    },
                  ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    child: Row(
                      children: [
                        const Text(
                          'Don’t have an account? ',
                          style: TextStyle(
                              color: Color(0xFF737373),
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            GoRouter.of(context).push(RouterNames.SignUpdoctor);
                          },
                          child: const Text(
                            'sign-up',
                            style: TextStyle(
                              color: Color(0xFF737373),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
