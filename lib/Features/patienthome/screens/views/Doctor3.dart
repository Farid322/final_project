import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class DoctorThree extends StatelessWidget {
  const DoctorThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).go(RouterNames.SearchOutput);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        elevation: 0,
        title: const Text(
          "Dr. Ashis Chandra",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset('assets/images/doctor1 (1).png', width: 375, height: 300),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 5),
                  child: Custombutton(
                    text: 'Voice Call',
                    width: ScreenUtil().setWidth(102),
                    hieght: ScreenUtil().setHeight(38),
                    fontsize: 11.sp,
                    radius: 8,
                    color: const Color.fromRGBO(81, 190, 251, 0.74),
                    icon: Icons.call,
                    herozintal: 10,
                    textcolor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Custombutton(
                    text: 'Video Call',
                    width: ScreenUtil().setWidth(102),
                    hieght: ScreenUtil().setHeight(38),
                    fontsize: 11,
                    radius: 8,
                    color: const Color.fromRGBO(126, 81, 251, 0.72),
                    icon: Icons.video_call_rounded,
                    herozintal: 10,
                    textcolor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 20),
                  child: Custombutton(
                    text: 'Message',
                    width: ScreenUtil().setWidth(102),
                    hieght: ScreenUtil().setHeight(38),
                    fontsize: 11.sp,
                    radius: 8,
                    color: const Color.fromRGBO(251, 136, 81, 0.72),
                    icon: Icons.message,
                    herozintal: 10,
                    textcolor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 130),
                  child: Text(
                    "Medicine & Heart Specialist",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 150, top: 5, bottom: 10),
                  child: Text(
                    "Good Health Clinic, MBBS, FCPS",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 255, top: 10),
                  child: Text(
                    "About Serena",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, top: 5, bottom: 10),
                  child: Text(
                    "Doctor serena is a professional doctor with more than 8 years of experience. she can really help you.",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 35, right: 50, top: 3, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      'Patients',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '1.8K',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 50, top: 3, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      'Experience',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '8 Years',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 35, top: 3, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      'Review',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '3.8K',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 25, bottom: 10),
            child: Custombutton(
              text: 'Search',
              width: 318,
              hieght: 52,
              fontsize: 16,
              radius: 8,
              color: Color(0xFF0E5C6D),
              icon: null,
              herozintal: 110,
              textcolor: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
