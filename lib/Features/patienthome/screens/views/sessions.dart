import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/custom_session.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/custom_session.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

class SessionsPatient extends StatelessWidget {
  const SessionsPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).go(RouterNames.PatientHome);
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
        shadowColor: const Color.fromARGB(31, 255, 255, 255),
        title: const Text(
          'Sessions',
          style: TextStyle(
            color: Color(0xFF35364F),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 0.40,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Next Session at 2:00 pm',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              const CustomSessionPatient(
                date: 'Date',
                time: 'Time',
                yourdate: '03 August 2020',
                yourtime: '2.20 Pm',
                sessions: ' Session 1',
                icon: null,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
              const CustomSessionPatient(
                date: 'Date',
                time: 'Time',
                yourdate: '03 August 2020',
                yourtime: '2.20 Pm',
                sessions: ' Session 2',
                icon: null,
              ),
            ])
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
