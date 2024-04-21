import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/auth/peresentaion/widgets/otp_form_widget.dart';
import 'package:graduation_project/Features/auth/view_model/cubit/code_cubit.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../../core/funcations/show_toast.dart';
import '../../../../../core/routes/app_routes.dart';

class CheckEmailDoctor extends StatelessWidget {
  CheckEmailDoctor({super.key});
  static String id = 'CheckEmaildoctor';

  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();
  final TextEditingController _fourthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OtpCodeCubit(),
        child: BlocConsumer<OtpCodeCubit, OtpCodeState>(
          listener: (context, state) {
            (previous, current) =>
                current is OtpCodeSuccess || current is OtpCodeFailure;
            (context, state) {
              if (state is OtpCodeSuccess) {
                GoRouter.of(context).push(RouterNames.ResetPasswordDoctor);
              } else if (state is OtpCodeFailure) {
                showToast(message: state.errMessage, state: ToastStates.ERROR);
              }
            };
          },
          builder: (context, state) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 120),
            child: Column(
              children: [
                Image.asset('assets/images/illustration.png'),
                const SizedBox(
                  height: 38,
                ),
                const Text(
                  'Check Your Email',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                const Text(
                  'We’ve sent a code to',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                const Text(
                  'Laraalaa22@gamil.com',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    OtpFormWidget(
                      textEditingController: _firstController,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    OtpFormWidget(
                      textEditingController: _secondController,
                    ),
                    const SizedBox(width: 5),
                    OtpFormWidget(
                      textEditingController: _thirdController,
                    ),
                    const SizedBox(width: 5),
                    OtpFormWidget(
                      textEditingController: _fourthController,
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).push(RouterNames.ResetPasswordDoctor);
                  },
                  child: const CustomButton(
                    text: 'Check Code',
                    // onTap: () {
                    //   GoRouter.of(context).push(RouterNames.ResetPasswordDoctor);
                    //   // BlocProvider.of<OtpCodeCubit>(context).sendOtpCode(
                    //   //   resetCode:
                    //   //       '${_firstController.text}${_secondController.text}${_thirdController.text}${_fourthController.text}',
                    //   // );
                    // },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(33),
                  child: Row(
                    children: [
                      Text(
                        'I didn’t receive a code',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.699999988079071)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Resend',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
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
    );
  }
}
