import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/Appiontment_pages/widgets/past_myappointment.dart';
import 'package:graduation_project/Features/Doctorhome/screens/Appiontment_pages/widgets/upcoming_myappointment.dart';

class Appointmentcp extends StatefulWidget {
  const Appointmentcp({super.key});

  @override
  State<Appointmentcp> createState() => _UpcomingAppiontmentsState();
}

class _UpcomingAppiontmentsState extends State<Appointmentcp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 85,
          automaticallyImplyLeading: true,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
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
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
          title: const Text(
            'My Appintment',
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
          bottom: const TabBar(tabs: [
            Tab(
                child: Text(
              'Upcoming',
              style: TextStyle(color: Colors.black),
            )),
            Tab(
              child: Text(
                'Past',
                style: TextStyle(color: Colors.black),
              ),
            )
          ]),
        ),
        body: const TabBarView(
          children: [UpcomingAppiontments(), PastAppiontments()],
        ),
      ),
    );
  }
}
