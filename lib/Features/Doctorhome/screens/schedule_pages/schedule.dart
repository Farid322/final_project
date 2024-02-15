import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/schedule_pages/widgets/CustomCategory.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        automaticallyImplyLeading: true,
        leading: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
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
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Select the date',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: [
                Container(
                  width: 73,
                  height: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(241, 245, 249, 1),
                      border: Border.all(
                        color: const Color.fromARGB(31, 255, 255, 255),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          '22',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text('fr'),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    width: 73,
                    height: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(14, 92, 109, 1),
                        border: Border.all(
                          color: const Color.fromARGB(31, 255, 255, 255),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          '23',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        'sa',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ])),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    width: 73,
                    height: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(241, 245, 249, 1),
                        border: Border.all(
                          color: const Color.fromARGB(31, 255, 255, 255),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          '24',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text('su'),
                    ])),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    width: 73,
                    height: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(241, 245, 249, 1),
                        border: Border.all(
                          color: const Color.fromARGB(31, 255, 255, 255),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          'Other',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        'Date',
                        style: TextStyle(fontSize: 12),
                      ),
                    ])),
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
                  'Select time',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                  width: 335,
                  height: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(241, 245, 249, 1),
                      border: Border.all(
                        color: const Color.fromARGB(31, 255, 255, 255),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(right: 80, left: 30, top: 10),
                              child: Text(
                                'Form',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w300),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 80, right: 20, top: 10),
                              child: Text(
                                'To',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 30, left: 30),
                              child: Text(
                                '12.00',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w800),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                '>',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 30, left: 30),
                              child: Text(
                                '14.00',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w800),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
              textcolor: null,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
