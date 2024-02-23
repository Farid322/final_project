import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/Custom_medical.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class MyMedicalTest extends StatelessWidget {
  const MyMedicalTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        leading: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        shadowColor: const Color.fromARGB(31, 255, 255, 255),
        title: const Text(
          'Medical Test',
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
      body:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, right: 120),
            child: Text(
              'My Medical Tests',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(children: [
              const CustomMedical(
                date: 'Date',
                time: 'Time',
                yourdate: '03 August 2020',
                yourtime: '2.20 Pm',
                sessions: 'Test 1',
                icon: Icons.drive_folder_upload_outlined,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomMedical(
                date: 'Date',
                time: 'Time',
                yourdate: '03 August 2020',
                yourtime: '2.20 Pm',
                sessions: ' Test 2',
                icon: Icons.drive_folder_upload_outlined,
              ),
              SizedBox(height: 100.h),
               Custombutton(
                onTap: () {
                  GoRouter.of(context).push(RouterNames.TestsPage);
                },
                text: 'Upload',
                width:151 ,
                hieght: 46,
                fontsize: 21, 
                radius: 15,
                color: Color(0xffDF7861),
                icon: null, 
                herozintal: 10,
                textcolor: Colors.white)
            ]),
          )
        ],
      ),
    );
  }
}
