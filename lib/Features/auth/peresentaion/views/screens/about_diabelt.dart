import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

class AboutDiabelt extends StatelessWidget {
  const AboutDiabelt({super.key});
  static String id = 'AboutDiabelt';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(50),
                  horizontal: ScreenUtil().setWidth(18),
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'About\n',
                        style: GoogleFonts.lora(
                          color: const Color(0xFF515151),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'HemoBelt',
                        style: GoogleFonts.lora(
                          color: const Color(0xFF222222),
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(320),
                child: const Text(
                  'Hemodialysis is a machine filters your blood through a dialyzer, also known as an artificial kidney, with built-in safety checks to be sure the process is safe and effective. Home and in-center hemodialysis machines are very similar in function, though the home machine is much smaller.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      height: 2,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(45),
              ),
              Image.asset(
                'assets/images/World health day 1.png',
                width: ScreenUtil().setWidth(400),
                height: ScreenUtil().setHeight(400),
                alignment: Alignment.bottomCenter,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(47),
              ),
              CustomButton(
                text: 'Get started',
                onTap: () {
                  GoRouter.of(context).go(RouterNames.hemodialysis);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
