import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/home.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/Featuers.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/Medical_test.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/medicine.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/sessions.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/CustomPatientMed.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/Custom_medical.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/custompaitent.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class Patientprofile extends StatelessWidget {
  const Patientprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.h,
        automaticallyImplyLeading: true,
        leading: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const DoctorHome()),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        shadowColor: const Color.fromARGB(31, 255, 255, 255),
        title: Text(
          'Ahmed aly',
          style: TextStyle(
            color: const Color(0xFF35364F),
            fontSize: 20.sp,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 0.40,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(20),
            vertical: ScreenUtil().setHeight(20),
          ),
          child: Image.asset(
            'assets/images/Ellipse 18.png',
            width: ScreenUtil().setWidth(80.w),
            height: ScreenUtil().setWidth(80.h),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            '248 845 888',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
          ),
        ),
        Row(
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
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
            bottom: 10,
          ),
          child: Row(
            children: [
              const Text(
                'Sessions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: InkWell(
                  // Within the `FirstRoute` widget
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sessions()),
                    );
                  },
                  child: Text(
                    'Veiw all',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(14, 92, 109, 1)),
                  ),
                ),
              ),
            ],
          ),
        ),
        const CustomPatientSession(
          sessions: 'Session 1',
          date: 'Data',
          yourdate: '03 August 2020',
          time: 'Time',
          yourtime: '2.20 Pm',
          icon: null,
          text: 'Med 1',
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
            bottom: 10,
          ),
          child: Row(
            children: [
              Text(
                'Medicine',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Medicine()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: Text(
                    'Veiw all',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(14, 92, 109, 1)),
                  ),
                ),
              ),
            ],
          ),
        ),
        const CustomPatientMedicine(
          text: 'Med 1',
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
            bottom: 10,
          ),
          child: Row(
            children: [
              Text(
                'Medical Test',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 185),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MedicalTest()),
                    );
                  },
                  child: Text(
                    'Veiw all',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(14, 92, 109, 1)),
                  ),
                ),
              ),
            ],
          ),
        ),
        const CustomMedical(
          sessions: 'Test 1',
          date: 'Data',
          yourdate: '03 August 2020',
          time: 'Time',
          yourtime: '2.20 Pm',
          icon: null,
        )
      ]),
    );
  }
}
