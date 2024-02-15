import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class CustomMedical extends StatelessWidget {
  const CustomMedical({
    super.key,
    required this.date,
    required this.time,
    required this.yourdate,
    required this.yourtime,
    required this.sessions,
    required this.icon,
  });
  final String sessions;
  final String date;
  final String yourdate;
  final String time;
  final String yourtime;
  final IconData? icon;

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
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Text(
                    sessions,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  Icon(
                    icon,
                    color: const Color(0xFF0E5C6D),
                    size: 35,
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
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
                      width: 40,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          time,
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
                          yourtime,
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
                      width: 40,
                    ),
                    const Custombutton(
                      text: 'veiw',
                      width: 102,
                      hieght: 38,
                      fontsize: 12,
                      radius: 8,
                      color: Color(0xFF0E5C6D),
                      icon: null,
                      herozintal: 13,
                      textcolor: null,
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
