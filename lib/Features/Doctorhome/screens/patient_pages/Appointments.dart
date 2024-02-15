import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/Appiontment_pages/widgets/custom_containar_appoint.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});
  static String id = 'Appointments';

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
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          'Patients',
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
      body: const Center(
          child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomContainer(
              name: 'Name',
              yourname: 'Yasmine',
              parcode: 'ParCode',
              yourparcode: '101 202 055',
              id: 'ID',
              yourid: '0112545425',
            ),
            SizedBox(
              height: 30,
            ),
            CustomContainer(
              name: 'Name',
              yourname: 'Ahmed',
              parcode: 'ParCode',
              yourparcode: '012 365 258',
              id: 'ID',
              yourid: '1485242865',
            ),
            SizedBox(
              height: 30,
            ),
            CustomContainer(
              name: 'Name',
              yourname: 'Yara',
              parcode: 'ParCode',
              yourparcode: '125 369 058',
              id: 'ID',
              yourid: '21358726902',
            ),
          ],
        )
      ])),
    );
  }
}
