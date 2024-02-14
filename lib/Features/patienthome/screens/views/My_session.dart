import 'package:flutter/material.dart';
import 'package:graduation_project/Features/patienthome/screens/widgets/Custom_timer.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

void main() {
  runApp(const Paitentsession());
}

class Paitentsession extends StatefulWidget {
  const Paitentsession({super.key});

  @override
  State<Paitentsession> createState() => _Paitentsession();
}

class _Paitentsession extends State<Paitentsession> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          shadowColor: const Color.fromARGB(31, 255, 255, 255),
          title: const Text(
            'My Session',
            style: TextStyle(
              color: Color(0xFF35364F),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 1.5,
              letterSpacing: 0.40,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    'My Session',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CustomTimer()],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Row(
                children: [
                  Custombutton(
                    text: 'start',
                    width: 140,
                    hieght: 46,
                    fontsize: 19,
                    radius: 18,
                    color: kthirdColor,
                    icon: null,
                    herozintal: 25,
                    textcolor: Color.fromARGB(255, 255, 255, 255),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Custombutton(
                    text: 'Resume',
                    width: 140,
                    hieght: 46,
                    fontsize: 19,
                    radius: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                    icon: null,
                    herozintal: 15,
                    textcolor: kPrimaryColor,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    'Your vital measurements:',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 10, left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    width: 103,
                    height: 116,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              'assets/images/blood-pressure 1.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              ' Pressure',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(112, 112, 112, 1)),
                            ),
                          ),
                          const Text(
                            '120/80',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 103,
                    height: 116,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              'assets/images/water-temperature 1.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              ' Blood Temperature',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(112, 112, 112, 1)),
                            ),
                          ),
                          const Text(
                            '37',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 103,
                    height: 116,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              'assets/images/testing-tube 1.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              ' Waste',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(112, 112, 112, 1)),
                            ),
                          ),
                          const Text(
                            '72%',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 20, left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    width: 103,
                    height: 116,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              'assets/images/test-tube 1.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              ' fluid',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(112, 112, 112, 1)),
                            ),
                          ),
                          const Text(
                            '92%',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
