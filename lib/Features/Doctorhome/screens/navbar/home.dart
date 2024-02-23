import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';

class DoctorHome extends StatelessWidget {
  const DoctorHome({super.key});
  static String id = 'DoctorHome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const SizedBox(
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Image.asset(
              'assets/images/Ellipse 18.png',
              height: 70,
              width: 70,
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(children: [
              Text(
                ' Hi,Welcome Back',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                ' Dr.Muhammed',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ])
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(RouterNames.Appointments);
                },
                child: Container(
                  width: 151,
                  height: 223,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(127, 207, 252, 1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Patients',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(RouterNames.Appointmentcp);
                },
                child: Container(
                  width: 151,
                  height: 223,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                        // changes position of shadow
                      ),
                    ],
                    color: const Color.fromRGBO(162, 130, 252, 1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Appointments',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              GoRouter.of(context).push(RouterNames.Schedule);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 151,
                  height: 223,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(251, 179, 179, 1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Schedule',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ]),
      ),
    );
  }
}
