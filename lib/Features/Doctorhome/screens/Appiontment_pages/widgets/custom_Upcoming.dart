import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class Customupcoming extends StatelessWidget {
  const Customupcoming({
    super.key,
    required this.date,
    required this.time,
    required this.parcode,
    required this.yourdate,
    required this.yourtime,
    required this.yourparcode,
  });
  final String date;
  final String time;
  final String parcode;
  final String yourdate;
  final String yourtime;
  final String yourparcode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 345,
          height: 128,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(8)),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        date,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0x9E35354F),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        yourdate,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFF35364F),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          time,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0x9E35354F),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          yourtime,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF35364F),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        parcode,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0x9E35354F),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        yourparcode,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF35364F),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Row(
                  children: [
                    const Custombutton(
                      schedulewidth: 30,
                      text: 'Voice Call',
                      width: 102,
                      hieght: 38,
                      fontsize: 12,
                      radius: 8,
                      color: Color.fromRGBO(81, 190, 251, 0.74),
                      shadow: null,
                      icon: Icons.call,
                      herozintal: 2,
                      textcolor: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Custombutton(
                      schedulewidth: 30,
                      text: 'Message',
                      width: 102,
                      hieght: 38,
                      fontsize: 12,
                      radius: 8,
                      color: Color.fromRGBO(251, 163, 81, 0.72),
                      shadow: null,
                      icon: Icons.message_rounded,
                      herozintal: 2,
                      textcolor: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Custombutton(
                        schedulewidth: 30,
                        text: 'Open',
                        width: 102,
                        hieght: 38,
                        fontsize: 12,
                        radius: 8,
                        color: Color.fromRGBO(22, 139, 12, 1),
                        shadow: null,
                        icon: null,
                        herozintal: 2,
                        textcolor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}