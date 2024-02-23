import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/NavBarPatient.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/utils/app_asset.dart';
import 'package:graduation_project/utils/app_styles.dart';

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
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                Image.asset(
                  'assets/images/Ellipse 18.png',
                  height: ScreenUtil().setHeight(70),
                  width: ScreenUtil().setWidth(70),
                ),
                const SizedBox(
                  width: 10,
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
                ])
              ]),
              SizedBox(height: 46.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Your session at 2:00 pm', style: AppStyels.s18)),
              SizedBox(height: 13.h),
              Image.asset(AppAssets.patienthomeimage),
              SizedBox(height: 17.h),
              Row(
                children: [
                  SizedBox(width: ScreenUtil().setWidth(33)),
                  Text('3', style: AppStyels.s23.copyWith(color: Colors.black)),
                  SizedBox(width: ScreenUtil().setWidth(55)),
                  Text('2', style: AppStyels.s23.copyWith(color: Colors.green)),
                  SizedBox(width: ScreenUtil().setWidth(55)),
                  Text('1',
                      style: AppStyels.s23.copyWith(color: Colors.yellow)),
                  SizedBox(width: ScreenUtil().setWidth(55)),
                  Text('12',
                      style: AppStyels.s23.copyWith(color: Colors.orange)),
                ],
              ),
              Row(
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
              SizedBox(height: ScreenUtil().setHeight(26)),
              Row(
                children: [
                  Custombutton(
                      onTap: () {
                        GoRouter.of(context).go(RouterNames.MedicalTest);
                      },
                      text: 'Medcial Tests',
                      width: 151,
                      hieght: 46,
                      fontsize: 14,
                      radius: 15,
                      color: Color(0xffDF7861),
                      icon: null,
                      herozintal: 10,
                      textcolor: Colors.white),
                  const SizedBox(width: 16),
                  Custombutton(
                      onTap: () {
                        GoRouter.of(context).go(RouterNames.Sessions);
                      },
                      text: 'Sessions',
                      width: 151,
                      hieght: 46,
                      fontsize: 15,
                      radius: 15,
                      color: const Color(0xff265FD6),
                      icon: null,
                      herozintal: 10,
                      textcolor: Colors.white),
                ],
              ),
              SizedBox(height: 25.h),
              Custombutton(
                  onTap: () {
                    GoRouter.of(context).go(RouterNames.PatientMedicine);
                  },
                  text: 'My medicine',
                  width: 151,
                  hieght: 46,
                  fontsize: 15,
                  radius: 15,
                  color: Color(0xff0E5C6D),
                  icon: null,
                  herozintal: 10,
                  textcolor: Colors.white),
              SizedBox(height: 13.h),
              Row(
                children: [
                  Text('My Doctor',
                      style: AppStyels.s18.copyWith(color: Colors.grey)),
                  SizedBox(width: 207.w),
                  const Icon(Icons.search, size: 32)
                ],
              ),
              SizedBox(height: 17.h),
              Container(
                width: 345.w,
                height: 360.h,
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
                  padding: const EdgeInsets.symmetric(vertical: 39),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text('Dr. Serena Gome', style: AppStyels.s18),
                          const Text('Medicine Specialist '),
                          SizedBox(height: 9.h),
                          Image.asset(AppAssets.ratingimage),
                          SizedBox(height: 27.h),
                          Text('Experience',
                              style:
                                  AppStyels.s18.copyWith(color: Colors.grey)),
                          SizedBox(height: 9.h),
                          Text('8 Years',
                              style: AppStyels.s18
                                  .copyWith(fontWeight: FontWeight.normal)),
                          SizedBox(height: 17.h),
                          const Custombutton(
                              text: 'Details',
                              width: 151,
                              hieght: 46,
                              fontsize: 22,
                              radius: 15,
                              color: Color(0xff0E5C6D),
                              icon: null,
                              herozintal: 10,
                              textcolor: Colors.white),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 34),
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
