import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/schedule_pages/widgets/CustomCategory.dart';
import 'package:graduation_project/Features/Doctorhome/screens/schedule_pages/widgets/time%20picker.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';
import 'package:graduation_project/main.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: camel_case_types
class selectappointment extends StatefulWidget {
  const selectappointment({super.key});

  @override
  State<selectappointment> createState() => _selectappointmentState();
}

// ignore: camel_case_types
class _selectappointmentState extends State<selectappointment> {
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
                  GoRouter.of(context).go(RouterNames.DoctorProfilePatient);
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
        title: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Text(
            S.of(context).lets,
            style: const TextStyle(
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
                locale: isArabic() ? ('ar-eg') : ('en-us'),
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
          Padding(
            padding: EdgeInsets.only(
                left: isArabic() ? (0) : (20),
                right: isArabic() ? (20) : (0),
                bottom: 10,
                top: 10),
            child: Row(
              children: [
                Text(
                  S.of(context).Category,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: isArabic() ? (0) : (20),
              right: isArabic() ? (20) : (0),
            ),
            child: Row(
              children: [
                CustomCategory(
                  text: S.of(context).Meeting,
                  color: const Color.fromRGBO(245, 158, 11, 1),
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomCategory(
                  text: S.of(context).Session,
                  color: const Color.fromRGBO(26, 117, 41, 1),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: isArabic() ? (0) : (20),
                right: isArabic() ? (20) : (0),
                bottom: 10,
                top: 10),
            child: Row(
              children: [
                Text(
                  S.of(context).Notes,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, bottom: 10, top: 10, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: S.of(context).Type,
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
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: Custombutton(
              text: S.of(context).save,
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
      bottomNavigationBar: const NavBarPatient(),
    );
  }
}
