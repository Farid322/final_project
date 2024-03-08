import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/Custom_medical.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';

class MyMedicalTest extends StatelessWidget {
  const MyMedicalTest({super.key});

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
          S.of(context).MedicalTests,
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: isArabic() ? (210) : (0),
                right: isArabic() ? (0) : (210)),
            child: Text(
              S.of(context).MedicalTests,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              textAlign: TextAlign.right,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(children: [
              CustomMedical(
                date: S.of(context).Date,
                time: S.of(context).Time,
                yourdate: S.of(context).august,
                yourtime: S.of(context).pm,
                sessions: S.of(context).Test,
                icon: Icons.drive_folder_upload_outlined,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomMedical(
                date: S.of(context).Date,
                time: S.of(context).Time,
                yourdate: S.of(context).august,
                yourtime: S.of(context).pm,
                sessions: S.of(context).Test,
                icon: Icons.drive_folder_upload_outlined,
              ),
              SizedBox(height: 100.h),
              Custombutton(
                  onTap: () {
                    GoRouter.of(context).push(RouterNames.TestsPage);
                  },
                  text: S.of(context).Upload,
                  width: 151,
                  hieght: 46,
                  fontsize: 21,
                  radius: 15,
                  color: const Color(0xffDF7861),
                  icon: null,
                  herozintal: isArabic() ? (25) : (10),
                  textcolor: Colors.white)
            ]),
          )
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
