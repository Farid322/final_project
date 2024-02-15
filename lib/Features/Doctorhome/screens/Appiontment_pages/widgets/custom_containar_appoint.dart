import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.name,
    required this.id,
    required this.parcode,
    required this.yourname,
    required this.yourid,
    required this.yourparcode,
  });
  final String name;
  final String id;
  final String parcode;
  final String yourname;
  final String yourid;
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
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        name,
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
                        yourname,
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
                    width: 60,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        id,
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
                        yourid,
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
                  const SizedBox(
                    width: 60,
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
              Custombutton(
                text: 'veiw',
                width: 102,
                hieght: 38,
                fontsize: 12,
                radius: 8,
                color: const Color(0xFF0E5C6D),
                icon: null,
                herozintal: 13,
                onTap: () {},
                textcolor: null,
              )
            ],
          ),
        )
      ],
    );
  }
}
