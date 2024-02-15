import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/Appiontment_pages/widgets/Custom_MyAppointment.dart';

class PastAppiontments extends StatefulWidget {
  const PastAppiontments({super.key});

  @override
  State<PastAppiontments> createState() => _PastAppiontmentsState();
}

class _PastAppiontmentsState extends State<PastAppiontments> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(9),
                  child: CustomMyAppoint(
                    date: 'Date',
                    time: 'Time',
                    parcode: 'Parcode',
                    yourdate: '03 August 2020',
                    yourtime: 'Now',
                    yourparcode: '101 025 369',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(9),
                  child: CustomMyAppoint(
                    date: 'Date',
                    time: 'Time',
                    parcode: 'Parcode',
                    yourdate: '03 August 2020',
                    yourtime: '2.20 Pm',
                    yourparcode: '101 025 369',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(9),
                  child: CustomMyAppoint(
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
    );
  }
}
