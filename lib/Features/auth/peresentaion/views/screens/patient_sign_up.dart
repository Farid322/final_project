import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

import '../../../../../core/widgets/custom_button.dart';

class PatientSignUp extends StatelessWidget {
  const PatientSignUp({super.key});
  static String id = 'PatientSignUp ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                width: 375,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: InkWell(
                  onTap: () {
                    GoRouter.of(context).go(RouterNames.PatientHome);
                  },
                  child: Text(S.of(context).skip,
                      style: const TextStyle(
                          color: Color(0xFF0E5C6D),
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          GoRouter.of(context).go(RouterNames.SignUppatient);
                        },
                        child: const Icon(Icons.arrow_back)),
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      S.of(context).Pleaseanswer,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                  width: 293,
                  height: 390,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      color: Colors.white,
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 9,
                          offset: Offset(0, 0),
                          spreadRadius: 4,
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 60),
                      child: Text(
                        S.of(context).Doyousuffer,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 238,
                      height: 56,
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 21,
                            ),
                            hintText: S.of(context).ex,
                            hintStyle: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 95,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: kPrimaryColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(context).go(RouterNames.SignUppatient);
                          },
                          child: Text(
                            S.of(context).back,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0E5C6D),
                                fontFamily: 'Roboto'),
                          ),
                        ),
                        const SizedBox(
                          width: 65,
                        ),
                        Container(
                            width: 124,
                            height: 47,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF0E5C6D),
                              shape: RoundedRectangleBorder(
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
                              child: InkWell(
                                onTap: () {
                                  GoRouter.of(context)
                                      .go(RouterNames.PatientHome);
                                },
                                child: Text(
                                  S.of(context).done,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ])),
              const SizedBox(height: 30),
              CustomButton(
                text: S.of(context).SignupP,
                onTap: () {
                  GoRouter.of(context).go(RouterNames.PatientHome);
                },
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 110,
                    child: Divider(
                      color: Color(0xFF5D5D5D),
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                  Text(S.of(context).or),
                  const SizedBox(
                    width: 110,
                    child: Divider(
                      color: Color(0xFF5D5D5D),
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 43),
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
                    Text((S.of(context).Registerwithgoogle))
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
                    Text(S.of(context).RegisterwithFacebook)
                  ],
                ),
              ),
              const SizedBox(height: 39),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  children: [
                    Text(
                      S.of(context).Donthave,
                      style: const TextStyle(
                          color: Color(0xFF737373),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      S.of(context).SignupP,
                      style: const TextStyle(
                        color: Color(0xFF737373),
                        fontSize: 15,
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
    );
  }
}
