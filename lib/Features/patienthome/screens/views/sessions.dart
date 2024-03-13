import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/custom_session.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/custom_session.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

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
        title: Text(
          S.of(context).Sessions,
          style: const TextStyle(
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
            Padding(
              padding: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  right: isArabic() ? (0) : (180),
                  left: isArabic() ? (140) : (0)),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  S.of(context).NextSession,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              CustomSessionPatient(
                date: S.of(context).Date,
                time: S.of(context).Time,
                yourdate: S.of(context).august,
                yourtime: S.of(context).pm,
                sessions: S.of(context).Session1,
                icon: null,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
              CustomSessionPatient(
                date: S.of(context).Date,
                time: S.of(context).Time,
                yourdate: S.of(context).august,
                yourtime: S.of(context).pm,
                sessions: S.of(context).Session2,
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
