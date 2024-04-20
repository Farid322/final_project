import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/auth/view_model/cubit/forget_password_cubit.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../../core/funcations/show_toast.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class ErorremailDoctor extends StatelessWidget {
  ErorremailDoctor({super.key});
  static String id = 'Erorremaildoctor';

  final TextEditingController _emailadressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetpasswordCubit(),
      child: BlocListener<ForgetpasswordCubit, ForgetpasswordState>(
        listenWhen: (previous, current) =>
            current is ForgetpasswordSuccess ||
            current is ForgetpasswordFailure,
        listener: (context, state) {
          if (state is ForgetpasswordSuccess) {
            GoRouter.of(context).push(RouterNames.CheckEmailDoctor);
          } else if (state is ForgetpasswordFailure) {
            showToast(message: state.errMsg, state: ToastStates.ERROR);
          }
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(50),
                vertical: ScreenUtil().setHeight(150),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/Character.jpg'),
                  const SizedBox(
                    height: 20,
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Don’t worry! It happens. Please enter the email associated with your account',
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email Adress',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextFormField(
                    hintText: 'ex.Email@gamil.com',
                    textEditingController: _emailadressController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocBuilder<ForgetpasswordCubit, ForgetpasswordState>(
                    buildWhen: (previous, current) =>
                        current is ForgetpasswordSuccess ||
                        current is ForgetpasswordFailure ||
                        current is ForgetpasswordLoading,
                    builder: (context, state) {
                      return CustomButton(
                        text: 'Send code',
                        onTap: () {
                          BlocProvider.of<ForgetpasswordCubit>(context)
                              .erroremail(
                                  emailadress: _emailadressController.text);
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(20),
                      horizontal: ScreenUtil().setWidth(50),
                    ),
                    child: Row(
                      children: [
                        const Text('Remember password ?'),
                        InkWell(
                          onTap: () {
                            GoRouter.of(context)
                                .go(RouterNames.DoctorLoginPage);
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
        ),
      ),
    );
  }
}
