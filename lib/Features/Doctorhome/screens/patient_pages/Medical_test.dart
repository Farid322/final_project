import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/Custom_medical.dart';

class MedicalTest extends StatelessWidget {
  const MedicalTest({super.key});

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
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, right: 120),
            child: Text(
              'Ahmed’s Medical Tests',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Column(children: [
              CustomMedical(
                date: 'Date',
                time: 'Time',
                yourdate: '03 August 2020',
                yourtime: '2.20 Pm',
                sessions: 'Test 1',
                icon: Icons.drive_folder_upload_outlined,
              ),
              SizedBox(
                height: 30,
              ),
              CustomMedical(
                date: 'Date',
                time: 'Time',
                yourdate: '03 August 2020',
                yourtime: '2.20 Pm',
                sessions: ' Test 2',
                icon: Icons.drive_folder_upload_outlined,
              )
            ]),
          )
        ],
      ),
    );
  }
}
