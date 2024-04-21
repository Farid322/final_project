import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/core/widgets/custom_text_form_field.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class SignUppatient extends StatelessWidget {
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passWordController = TextEditingController();
  // final TextEditingController _confirmPasswordController = TextEditingController();
  // final TextEditingController _usernameController = TextEditingController();
  // final TextEditingController _barcodeController = TextEditingController();
  // final TextEditingController _gendersController = TextEditingController();

  const SignUppatient({super.key});
  static String id = 'SignUppatient';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: ScreenUtil().setWidth(343),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          GoRouter.of(context)
                              .go(RouterNames.PatientRegisterPage);
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      S.of(context).createaccount,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                  alignment:
                      isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).username,
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: S.of(context).YourUsername,
              ),
              const SizedBox(height: 30),
              Align(
                  alignment:
                      isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).emailaddress,
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: S.of(context).YourEmail,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Column(
                      children: [
                        Align(
                            alignment: isArabic()
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Text(
                              S.of(context).Countrycode,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextFormField(
                          hintText: S.of(context).code,
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
                        Align(
                            alignment: isArabic()
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Text(
                              S.of(context).Mobilenumber,
                              maxLines: 1,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextFormField(
                          hintText: S.of(context).number,
                          width: 150,
                          height: 56,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Align(
                  alignment:
                      isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).password,
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: S.of(context).YourPassword,
              ),
              const SizedBox(height: 30),
              Align(
                  alignment:
                      isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).ConfirmPassword,
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: S.of(context).ConfirmYourPassword,
              ),
              const SizedBox(height: 30),
              Align(
                  alignment:
                      isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).age,
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: S.of(context).YourAge,
              ),
              const SizedBox(
                height: 33,
              ),
              Align(
                  alignment:
                      isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).Gender,
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                        width: 138,
                        height: 46,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x210E5C6D),
                              blurRadius: 13,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            S.of(context).Female,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )),
                  ),
                  Container(
                      width: 138,
                      height: 46,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.5, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x210E5C6D),
                            blurRadius: 13,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).Male,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              Align(
                  alignment:
                      isArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).Barcode,
                  )),
              const SizedBox(
                height: 5,
              ),
              CustomTextFormField(
                hintText: S.of(context).yourbarcode,
              ),
              const SizedBox(
                height: 36,
              ),
              CustomButton(
                text: S.of(context).Next,
                onTap: () {
                  GoRouter.of(context).go(RouterNames.PatientSignUp);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
