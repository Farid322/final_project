import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/utils/app_styles.dart';

import '../../../../../core/routes/app_routes.dart';
import '../../../../../main.dart';

class TemperaturePage extends StatelessWidget {
  TemperaturePage({super.key});

  final TextEditingController _temperatureController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(
            children: [
              const Center(child: Text('Diabelt', style: AppStyels.s23)),
              const SizedBox(height: 47),
              Center(child: Text(S.of(context).PleaseAnswer)),
              const SizedBox(height: 40),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Text(
                        '2/3',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(129, 129, 129, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Text(
                      S.of(context).temperature,
                      style:
                          AppStyels.s18.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: 238,
                    height: 56,
                    child: TextFormField(
                      controller: _temperatureController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 21,
                        ),
                        hintText: 'ex.37 ',
                        hintStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 21),
              Align(
                alignment:
                    isArabic() ? Alignment.bottomLeft : Alignment.bottomRight,
                child: Container(
                  width: 118,
                  height: 47,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).go(RouterNames.PressurePage);
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
                      SizedBox(
                        width: ScreenUtil().setWidth(20),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff0E5C6D),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {
                          if (_temperatureController.text == '37') {
                            GoRouter.of(context).go(RouterNames.WeightPage);
                          } else {
                            GoRouter.of(context)
                                .go(RouterNames.RefuesdResultPage);
                          }
                        },
                        child: const Text('Next',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
