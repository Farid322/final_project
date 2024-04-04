import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';
import 'package:graduation_project/generated/l10n.dart';

class CustomSessionPatient extends StatelessWidget {
  const CustomSessionPatient({
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
          width: ScreenUtil().setWidth(345),
          height: ScreenUtil().setHeight(160),
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
                  const Padding(padding: EdgeInsets.all(10)),
                  Text(
                    sessions,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(190),
                  ),
                  Icon(
                    icon,
                    color: const Color(0xFF0E5C6D),
                    size: 27,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
                  )
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
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
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(40),
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
                      width: ScreenUtil().setWidth(40),
                    ),
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).go(RouterNames.Sessions);
                      },
                      child: Custombutton(
                        schedulewidth: 30,
                        text: S.of(context).View,
                        width: 102,
                        hieght: 38,
                        fontsize: 12,
                        radius: 8,
                        color: const Color(0xFF0E5C6D),
                        icon: null,
                        herozintal: 5,
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
