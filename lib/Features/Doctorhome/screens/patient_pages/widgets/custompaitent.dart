import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/sessions.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class CustomPatientSession extends StatelessWidget {
  const CustomPatientSession({
    super.key,
    required this.date,
    required this.time,
    required this.yourdate,
    required this.yourtime,
    required this.sessions,
    required this.icon,
    required this.text,
  });
  final String sessions;
  final String date;
  final String yourdate;
  final String time;
  final String yourtime;
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: ScreenUtil().setWidth(345),
          height: ScreenUtil().setHeight(140),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color.fromARGB(39, 10, 10, 1)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(5)),
                  Text(
                    sessions,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(215),
                  ),
                  Icon(
                    icon,
                    color: const Color(0xFF0E5C6D),
                    size: 35,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
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
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
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
                        SizedBox(
                          height: ScreenUtil().setHeight(5),
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
                    SizedBox(
                      width: ScreenUtil().setWidth(50),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
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
                        SizedBox(
                          height: ScreenUtil().setHeight(5),
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
                    SizedBox(
                      width: ScreenUtil().setWidth(50),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sessions()),
                        );
                      },
                      child: const Custombutton(
                        text: 'veiw',
                        width: 102,
                        hieght: 38,
                        fontsize: 12,
                        radius: 8,
                        color: Color(0xFF0E5C6D),
                        icon: null,
                        herozintal: 10,
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
