import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/Appiontment_pages/widgets/custom_Upcoming.dart';

class UpcomingAppiontments extends StatefulWidget {
  const UpcomingAppiontments({super.key});

  @override
  State<UpcomingAppiontments> createState() => _UpcomingAppiontmentsState();
}

class _UpcomingAppiontmentsState extends State<UpcomingAppiontments> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Center(
          child: ListView(
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Customupcoming(
                      date: 'Date',
                      time: 'Time',
                      parcode: 'Parcode',
                      yourdate: '03 August 2020',
                      yourtime: 'Now',
                      yourparcode: '101 025 369',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Customupcoming(
                      date: 'Date',
                      time: 'Time',
                      parcode: 'Parcode',
                      yourdate: '03 August 2020',
                      yourtime: '2.20 Pm',
                      yourparcode: '101 025 369',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Customupcoming(
                      date: 'Date',
                      time: 'Time',
                      parcode: 'Parcode',
                      yourdate: '03 August 2020',
                      yourtime: '2.20 Pm',
                      yourparcode: '101 025 369',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
