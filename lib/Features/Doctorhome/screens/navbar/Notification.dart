import 'package:flutter/material.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/widgets/customnotification.dart';
import 'package:graduation_project/Features/Doctorhome/screens/widgets/Navigationbar.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/core/widgets2/CustomButton.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
        centerTitle: true,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Color(0xFF35364F),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1.5,
            letterSpacing: 0.40,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20, bottom: 5),
              child: Row(
                children: [
                  Text(
                    'Today',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            customNotification(
              'Remind For Serial ',
              'It is a long established fact that a reader and will be distracted.',
              const Color.fromRGBO(81, 136, 253, 0.5),
              '12 min',
            ),
            const Divider(
              thickness: 0.5,
            ),
            customNotification(
              'Notification',
              'It is a long established fact that a reader and will be distracted.',
              const Color.fromRGBO(126, 81, 253, 0.5),
              '5 min',
            ),
            const Divider(
              thickness: 0.5,
            ),
            customNotification(
              'Notification',
              'It is a long established fact that a reader and will be distracted.',
              const Color.fromRGBO(253, 81, 81, 0.42),
              '13 min',
            ),
            const Divider(thickness: 0.5),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 5),
              child: Row(
                children: [
                  Text(
                    'Yesterday',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            customNotification(
              'Remind For Serial ',
              'It is a long established fact that a reader and will be distracted.',
              const Color.fromRGBO(81, 136, 253, 0.5),
              '20 min',
            ),
            const Divider(
              thickness: 0.5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Request',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '1 hour',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10, bottom: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: Image.asset('assets/images/adamsmith .png'),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Adam smith sent you add!',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Custombutton(
                                text: 'Confirm',
                                width: 85,
                                hieght: 25,
                                fontsize: 12,
                                radius: 5,
                                color: kPrimaryColor,
                                icon: null,
                                herozintal: 0.2,
                                textcolor: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.delete_outline,
                                color: Colors.red,
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.red,
                                      blurRadius: 2.0,
                                      offset: Offset.zero)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(key: null),
    );
  }
}
