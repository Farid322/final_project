import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/widgets/custom_session.dart';

class Sessions extends StatelessWidget {
  const Sessions({super.key});

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
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              CustomSession(
                date: 'Date',
                time: 'Time',
                yourdate: '03 August 2020',
                yourtime: '2.20 Pm',
                sessions: ' Session 1',
                icon: null,
              ),
              SizedBox(
                height: 30,
              ),
              CustomSession(
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
    );
  }
}
