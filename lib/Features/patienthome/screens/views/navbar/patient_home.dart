import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/utils/app_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PatientHome extends StatelessWidget {
  const PatientHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(40)),
            child: Column(children: [
              SizedBox(
                width: ScreenUtil().setWidth(80),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.asset(
                    'assets/images/Ellipse 18.png',
                    height: ScreenUtil().setHeight(70),
                    width: ScreenUtil().setWidth(70),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(children: [
                    Text(
                      S.of(context).HiWelcomeBack,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      S.of(context).Muhammed,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ]),
                  SizedBox(
                    width: isArabic() ? (150) : (150),
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(context).go(RouterNames.MessangerPatient);
                      },
                      child: const Icon(
                        FontAwesomeIcons.facebookMessenger,
                        color: kPrimaryColor,
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(height: 46.h),
              Align(
                  alignment:
                      isArabic() ? Alignment.topRight : Alignment.topLeft,
                  child: Text(S.of(context).yoursession, style: AppStyels.s18)),
              SizedBox(height: 13.h),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 75.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 15.0,
                      percent: 0.6,
                      center: Text(
                        S.of(context).hours,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: const Color(0xffDF7861),
                      progressColor: kPrimaryColor,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: isArabic() ? (20) : (0),
                          left: isArabic() ? (0) : (20)),
                      child: Custombutton(
                          onTap: () {
                            GoRouter.of(context).go(RouterNames.Bluetoothpage);
                          },
                          text: S.of(context).start,
                          width: 120,
                          hieght: 46,
                          fontsize: 18,
                          radius: 15,
                          color: kPrimaryColor,
                          icon: null,
                          herozintal: isArabic() ? (25) : (15),
                          textcolor: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: isArabic() ? (20) : (25)),
                child: Row(
                  children: [
                    SizedBox(
                        width: ScreenUtil().setWidth(isArabic() ? (20) : (20))),
                    Text('3',
                        style: AppStyels.s23.copyWith(color: kPrimaryColor)),
                    SizedBox(
                        width: ScreenUtil().setWidth(isArabic() ? (75) : (66))),
                    Text('2',
                        style: AppStyels.s23.copyWith(color: Colors.green)),
                    SizedBox(
                        width: ScreenUtil().setWidth(isArabic() ? (45) : (66))),
                    Text('1', style: AppStyels.s23.copyWith(color: Colors.red)),
                    SizedBox(width: ScreenUtil().setWidth(50)),
                    Text('12',
                        style: AppStyels.s23.copyWith(
                            color: const Color.fromARGB(255, 255, 203, 59))),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: isArabic() ? (20) : (25)),
                child: Row(
                  children: [
                    Text(S.of(context).Totalsessions,
                        style: AppStyels.s14.copyWith(color: Colors.grey)),
                    SizedBox(
                        width: ScreenUtil().setWidth(isArabic() ? (20) : (10))),
                    Text(S.of(context).Completed,
                        style: AppStyels.s14.copyWith(color: Colors.grey)),
                    SizedBox(
                        width: ScreenUtil().setWidth(isArabic() ? (20) : (10))),
                    Text(S.of(context).Delayed,
                        style: AppStyels.s14.copyWith(color: Colors.grey)),
                    SizedBox(
                        width: ScreenUtil().setWidth(isArabic() ? (20) : (10))),
                    Text(S.of(context).Minhours,
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
                        text: S.of(context).MedicalTests,
                        width: 151,
                        hieght: 46,
                        fontsize: 18,
                        radius: 15,
                        color: const Color(0xffDF7861),
                        icon: null,
                        herozintal: isArabic() ? (1) : (1),
                        textcolor: Colors.white),
                    const SizedBox(width: 16),
                    Custombutton(
                        onTap: () {
                          GoRouter.of(context).go(RouterNames.SessionsPatient);
                        },
                        text: S.of(context).Sessions,
                        width: 151,
                        hieght: 46,
                        fontsize: 18,
                        radius: 15,
                        color: const Color(0xff265FD6),
                        icon: null,
                        herozintal: isArabic() ? (23) : (15),
                        textcolor: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Custombutton(
                  onTap: () {
                    GoRouter.of(context).go(RouterNames.MyMedicine);
                  },
                  text: S.of(context).Mymedicine,
                  width: 151,
                  hieght: 46,
                  fontsize: 18,
                  radius: 15,
                  color: const Color(0xff0E5C6D),
                  icon: null,
                  herozintal: isArabic() ? (25) : (2),
                  textcolor: Colors.white),
              SizedBox(height: 13.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(S.of(context).MyDoctor,
                        style: AppStyels.s18.copyWith(color: Colors.grey)),
                    SizedBox(
                        width:
                            isArabic() ? (ScreenUtil().setWidth(250)) : (230)),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context).go(RouterNames.Search);
                        },
                        child: const Icon(Icons.search, size: 32))
                  ],
                ),
              ),
              SizedBox(height: 17.h),
              Container(
                width: 335,
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
                  padding: const EdgeInsets.all(4.0),
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: isArabic() ? (15) : (30), horizontal: 2),
                      child: Column(
                        children: [
                          const Text('Dr. Serena Gome'),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 2),
                            child: Text(
                              S.of(context).Medicinespeclialist,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 2),
                            child: Text(
                              S.of(context).Experience,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 2),
                            child: Text(
                              S.of(context).Years8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 2),
                            child: InkWell(
                              onTap: () {
                                GoRouter.of(context)
                                    .go(RouterNames.DoctorProfilePatient);
                              },
                              child: Custombutton(
                                  text: S.of(context).Details,
                                  width: 96,
                                  hieght: 35,
                                  fontsize: 15,
                                  radius: 10,
                                  color: const Color(0xff0E5C6D),
                                  icon: null,
                                  herozintal: isArabic() ? (1) : (5),
                                  textcolor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Image.asset('assets/images/doctor2.png')
                  ]),
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