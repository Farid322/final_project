import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/utils/app_asset.dart';
import 'package:graduation_project/utils/app_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PatientHome extends StatelessWidget {
  const PatientHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(33)),
            child: Column(children: [
              SizedBox(
                width: ScreenUtil().setWidth(10),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset(
                  'assets/images/Ellipse 18.png',
                  height: ScreenUtil().setHeight(70),
                  width: ScreenUtil().setWidth(70),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Column(children: [
                  Text(
                    ' Hi,Welcome Back',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Muhammed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ]),
                const SizedBox(
                  width: 150,
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: Icon(
                    FontAwesomeIcons.facebookMessenger,
                    color: kPrimaryColor,
                  ),
                )
              ]),
              SizedBox(height: 46.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Your session at 2:00 pm', style: AppStyels.s18)),
              SizedBox(height: 13.h),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 60.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 15.0,
                      percent: 0.4,
                      center: const Text(
                        "12 hours",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: const Color(0xffDF7861),
                      progressColor: kPrimaryColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Custombutton(
                          onTap: () {
                            GoRouter.of(context).go(RouterNames.Bluetoothpage);
                          },
                          text: 'Start',
                          width: 120,
                          hieght: 46,
                          fontsize: 18,
                          radius: 15,
                          color: kPrimaryColor,
                          icon: null,
                          herozintal: 15,
                          textcolor: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    SizedBox(width: ScreenUtil().setWidth(20)),
                    Text('3',
                        style: AppStyels.s23.copyWith(color: kPrimaryColor)),
                    SizedBox(width: ScreenUtil().setWidth(66)),
                    Text('2',
                        style: AppStyels.s23.copyWith(color: Colors.green)),
                    SizedBox(width: ScreenUtil().setWidth(66)),
                    Text('1', style: AppStyels.s23.copyWith(color: Colors.red)),
                    SizedBox(width: ScreenUtil().setWidth(50)),
                    Text('12',
                        style: AppStyels.s23.copyWith(
                            color: const Color.fromARGB(255, 255, 203, 59))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text('Total sessions',
                        style: AppStyels.s14.copyWith(color: Colors.grey)),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Text('Completed',
                        style: AppStyels.s14.copyWith(color: Colors.grey)),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Text('Delayed',
                        style: AppStyels.s14.copyWith(color: Colors.grey)),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Text('Min hours',
                        style: AppStyels.s14.copyWith(color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(26)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Custombutton(
                        onTap: () {
                          GoRouter.of(context).go(RouterNames.MyMedicalTest);
                        },
                        text: 'Medcial Test',
                        width: 151,
                        hieght: 46,
                        fontsize: 18,
                        radius: 15,
                        color: const Color(0xffDF7861),
                        icon: null,
                        herozintal: 1,
                        textcolor: Colors.white),
                    const SizedBox(width: 16),
                    Custombutton(
                        onTap: () {
                          GoRouter.of(context).go(RouterNames.SessionsPatient);
                        },
                        text: 'Sessions',
                        width: 151,
                        hieght: 46,
                        fontsize: 18,
                        radius: 15,
                        color: const Color(0xff265FD6),
                        icon: null,
                        herozintal: 15,
                        textcolor: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Custombutton(
                  onTap: () {
                    GoRouter.of(context).go(RouterNames.MyMedicine);
                  },
                  text: 'My Medicine',
                  width: 151,
                  hieght: 46,
                  fontsize: 18,
                  radius: 15,
                  color: const Color(0xff0E5C6D),
                  icon: null,
                  herozintal: 2,
                  textcolor: Colors.white),
              SizedBox(height: 13.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text('My Doctor',
                        style: AppStyels.s18.copyWith(color: Colors.grey)),
                    SizedBox(width: 207.w),
                    const Icon(Icons.search, size: 32)
                  ],
                ),
              ),
              SizedBox(height: 17.h),
              Container(
                width: 350,
                height: 185,
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
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            const Text(
                              'Dr. Serena Gome',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            const Text('Medicine Specialist',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500)),
                            SizedBox(height: 9.h),
                            Image.asset(AppAssets.ratingimage),
                            SizedBox(height: 27.h),
                            const Text('Experience',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey)),
                            SizedBox(height: 9.h),
                            Text('8 Years',
                                style: AppStyels.s18
                                    .copyWith(fontWeight: FontWeight.normal)),
                            SizedBox(height: 17.h),
                            const Custombutton(
                                text: 'Details',
                                width: 100,
                                hieght: 30,
                                fontsize: 15,
                                radius: 10,
                                color: Color(0xff0E5C6D),
                                icon: null,
                                herozintal: 5,
                                textcolor: Colors.white),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 8),
                        child: Image.asset(
                            'assets/images/5175-removebg-preview 1.png'),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
