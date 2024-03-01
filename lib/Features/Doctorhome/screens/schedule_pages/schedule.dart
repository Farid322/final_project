import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/schedule_pages/widgets/CustomCategory.dart';
import 'package:graduation_project/Features/Doctorhome/screens/schedule_pages/widgets/time%20picker.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:table_calendar/table_calendar.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

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
        title: const Padding(
          padding: EdgeInsets.only(right: 25),
          child: Text(
            'Lets set the schedule easily',
            style: TextStyle(
              color: Color(0xFF35364F),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 1.5,
              letterSpacing: 0.40,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            child: TableCalendar(
                calendarStyle: const CalendarStyle(
                    selectedDecoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                locale: 'en-us',
                rowHeight: 35,
                headerStyle: const HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                focusedDay: today,
                onDaySelected: _onDaySelected,
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                firstDay: DateTime.utc(2000, 01, 01),
                lastDay: DateTime.utc(2030, 01, 01)),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
            child: Row(
              children: [
                Text(
                  'Select time',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          TimeRangePicker(),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
            child: Row(
              children: [
                Text(
                  'Category',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: [
                CustomCategory(
                  text: 'Meeting',
                  color: Color.fromRGBO(245, 158, 11, 1),
                ),
                SizedBox(
                  width: 15,
                ),
                CustomCategory(
                  text: 'Call',
                  color: Color.fromRGBO(112, 26, 117, 1),
                ),
                SizedBox(
                  width: 15,
                ),
                CustomCategory(
                  text: 'Chat',
                  color: Color.fromRGBO(220, 38, 38, 1),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                const CustomCategory(
                  text: 'Other',
                  color: Color.fromRGBO(74, 74, 74, 1),
                ),
                const SizedBox(
                  width: 15,
                ),
                const CustomCategory(
                  text: 'Session',
                  color: Color.fromRGBO(26, 117, 41, 1),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 2,
                        color: const Color.fromRGBO(103, 109, 255, 1),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.add,
                    color: Color.fromRGBO(103, 109, 255, 1),
                    size: 12,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10, top: 10),
            child: Row(
              children: [
                Text(
                  'Notes',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Type Your Notes',
                  filled: true,
                  fillColor: const Color.fromRGBO(241, 245, 249, 1),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: Custombutton(
              text: 'Save',
              width: 100,
              hieght: 47,
              fontsize: 16,
              radius: 16,
              color: kPrimaryColor,
              icon: null,
              herozintal: 120,
              textcolor: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
